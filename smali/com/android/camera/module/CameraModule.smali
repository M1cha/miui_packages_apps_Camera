.class public Lcom/android/camera/module/CameraModule;
.super Lcom/android/camera/module/BaseModule;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/FocusManager$Listener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;
.implements Lcom/android/camera/protocol/ModeProtocol$FaceBeautyProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$AILensProtocol;
.implements Lcom/android/camera/MutexModeManager$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/CameraModule$1;,
        Lcom/android/camera/module/CameraModule$2;,
        Lcom/android/camera/module/CameraModule$3;,
        Lcom/android/camera/module/CameraModule$4;,
        Lcom/android/camera/module/CameraModule$AutoFocusCallback;,
        Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;,
        Lcom/android/camera/module/CameraModule$BurstSpeedController;,
        Lcom/android/camera/module/CameraModule$CameraCategory;,
        Lcom/android/camera/module/CameraModule$CameraState;,
        Lcom/android/camera/module/CameraModule$JpegPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;,
        Lcom/android/camera/module/CameraModule$MainHandler;,
        Lcom/android/camera/module/CameraModule$MetaDataManager;,
        Lcom/android/camera/module/CameraModule$PostViewPictureCallback;,
        Lcom/android/camera/module/CameraModule$RawPictureCallback;,
        Lcom/android/camera/module/CameraModule$SaveOutputImageTask;,
        Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;,
        Lcom/android/camera/module/CameraModule$ShutterCallback;
    }
.end annotation


# static fields
.field protected static final BURST_SHOOTING_COUNT:I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected m3ALocked:Z

.field private mAFEndLogTimes:I

.field private mAeLockSupported:Z

.field protected mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

.field private final mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field protected mAwbLockSupported:Z

.field private mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

.field private mBurstShotTitle:Ljava/lang/String;

.field private mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

.field protected mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

.field protected volatile mCameraState:I

.field private mCameraUUIDWatermarkImageData:[B

.field public mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field protected mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field protected mFirstTimeInitialized:Z

.field protected mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field protected mFocusStartTime:J

.field protected mFoundFace:Z

.field private mGroupFaceNum:I

.field private mGroupShot:Lcom/android/camera/groupshot/GroupShot;

.field private mGroupShotTimes:I

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsCountDown:Z

.field protected mIsImageCaptureIntent:Z

.field private mIsSaveCaptureImage:Z

.field protected mIsZSLMode:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field protected mJpegRotation:I

.field private mKeepBitmapTexture:Z

.field private mLastFreezeHDRTime:J

.field private mLastIsEffect:Z

.field private mLastShutterButtonClickTime:J

.field private mLongPressedAutoFocus:Z

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field protected mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

.field private mMeteringAreaSupported:Z

.field protected mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field protected mMultiSnapStatus:Z

.field protected mMultiSnapStopRequest:Z

.field private mNeedAutoFocus:Z

.field private mNeedSealCameraUUID:Z

.field private mOnResumeTime:J

.field private mPendingCapture:Z

.field private mPendingEnableHHT:Z

.field private mPendingMultiCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field protected final mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mQuickCapture:Z

.field protected final mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field protected mReceivedJpegCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRestartPreview:Z

.field private mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

.field private mSaveUri:Landroid/net/Uri;

.field protected mSceneMode:Ljava/lang/String;

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSetCameraParameter:I

.field private mSetMetaCallback:Z

.field private mShootOrientation:I

.field private mShootRotation:F

.field protected final mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSnapshotOnIdle:Z

.field protected mSwitchingPortraitZoom:Z

.field protected mTotalJpegCallbackNum:I

.field private mUpdateImageTitle:Z

.field private mUpdateSet:I

.field protected mVolumeLongPress:Z

.field private final mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get16(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/camera/module/CameraModule;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    return v0
.end method

.method static synthetic -get21(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/CameraModule;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set13(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set14(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;)Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set16(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isLaunchedByMainIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->cancelRunningInvisibleWatermarkTask()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->changePortraitZoom()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->disableHHT()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->executeInvisibleWatermarkTask(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->postStartPreview()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/camera/module/CameraModule;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->processXiaoAiControlAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->sendBurstCommand()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/camera/module/CameraModule;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPortraitSuccessHintShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/camera/module/CameraModule;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->setOrientation(II)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/camera/module/CameraModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setPortraitSuccessHintVisible(I)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopMultiSnap()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->switchCamera()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/camera/module/CameraModule;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->trackTakePictureCost(J)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryEnableHHT()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->updateMutexModeUI(ZZ)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/camera/module/CameraModule;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeImage([BI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needReturnInvisibleWatermark()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->buildWaterMarkForCameraUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCameraUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateShutter()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateSlide()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/Device;->getBurstShootCount()I

    move-result v0

    sput v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    new-instance v0, Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    new-instance v0, Lcom/android/camera/module/CameraModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$1;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    new-instance v0, Lcom/android/camera/module/CameraModule$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$ShutterCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    new-instance v0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    new-instance v0, Lcom/android/camera/module/CameraModule$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$RawPictureCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    new-instance v0, Lcom/android/camera/module/CameraModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    new-instance v0, Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    new-instance v0, Lcom/android/camera/module/CameraModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$2;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/module/CameraModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$3;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/module/CameraModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$4;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    new-instance v0, Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$CameraCategory;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    return-void
.end method

.method private animateCapture()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0
.end method

.method private animateHold()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    :cond_0
    return-void
.end method

.method private animateShutter()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateHold()V

    goto :goto_0
.end method

.method private animateSlide()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    :cond_0
    return-void
.end method

.method private applyPreferenceChange()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    :cond_1
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    return-void
.end method

.method private static buildWaterMarkForCameraUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canTakePicture()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelRunningInvisibleWatermarkTask()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    :cond_0
    return-void
.end method

.method private changePortraitZoom()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "changePortraitZoom"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    return-void
.end method

.method private checkRestartPreview()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Restarting Preview... Camera Mode Changed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    :cond_0
    return-void
.end method

.method private clearTopConfigBeforeBurst()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v2, v6, v4}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    new-array v4, v6, [I

    const/16 v5, 0xc4

    aput v5, v4, v7

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v0, v6, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    new-array v4, v6, [I

    const/16 v5, 0xc1

    aput v5, v4, v7

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    new-array v4, v6, [I

    const/16 v5, 0xc2

    aput v5, v4, v7

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0
.end method

.method private couldEnableObjectTrack()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableHHT()V
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->enhanceBeautyWithHHT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 15

    const/4 v14, -0x1

    const/4 v12, 0x0

    iget-boolean v11, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v11, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    iget-boolean v11, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    if-eqz v11, :cond_1

    invoke-direct {p0, v2}, Lcom/android/camera/module/CameraModule;->saveJpegData([B)V

    :cond_1
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needReturnInvisibleWatermark()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    :cond_3
    const/4 v7, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v4

    :try_start_1
    sget-object v11, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "IOException when doAttach"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v12}, Lcom/android/camera/Camera;->finish()V

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    :cond_4
    const v11, 0xc800

    invoke-static {v2, v11}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    invoke-static {v11}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "inline-data"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "data"

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v14, v12}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_2
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v12, "crop-temp"

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v12, "crop-temp"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    const/4 v9, 0x0

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "circle"

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, "circleCrop"

    const-string/jumbo v12, "true"

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_7

    const-string/jumbo v11, "output"

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.camera.action.CROP"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v1, v12}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_3
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catch_2
    move-exception v3

    :try_start_4
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V

    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v11

    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    :cond_7
    const-string/jumbo v11, "return-data"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private execPendingEventInHandle()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x24

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private executeInvisibleWatermarkTask(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->cancelRunningInvisibleWatermarkTask()V

    new-instance v0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;-><init>(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getCameraModeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u81ea\u52a8HDR"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "HDR"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u81ea\u52a8HHT"

    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v0, "HHT"

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u5408\u5f71\u4f18\u9009"

    return-object v0

    :cond_4
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCameraUUID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "camera-get-fusion-id"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "camera-fusion-id"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCountDownTimes()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->getCountDownTime()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    return v0
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    const-string/jumbo v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pref_camera_ubifocus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p2, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    sget-boolean v1, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportSquare()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "pref_camera_square_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez p2, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getLegacyDefaultRatio(Ljava/lang/String;[I)I
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v2, 0x1

    aget v2, p2, v2

    aget v3, p2, v4

    sub-int v1, v2, v3

    if-nez v1, :cond_2

    return v4

    :cond_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getBeautifyDefaultValue(Ljava/lang/String;)I

    move-result v0

    aget v2, p2, v4

    sub-int v2, v0, v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method private getMaxPictureSize()I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "workaround for portrait mode. we should not limit the picture size for portrait mode"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportFullSizeEffect()Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isLowerEffectSize()Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x300000

    :goto_0
    return v1

    :cond_5
    const v1, 0x895440

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x753000

    return v1

    :cond_7
    return v3
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parameters have been set to null when handleUpdateFaceView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    move v1, p1

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateFaceView(ZZZZI)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateFaceView(ZZZZI)V

    goto :goto_1
.end method

.method private hidePostCaptureAlert()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setEffectViewVisible(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->mapTapCoordinate(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method private initializeSecondTime()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    return-void
.end method

.method private installIntentFilter()V
    .locals 5

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.camera.action.XIAOAI_CONTROL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installIntentFilter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    return-void
.end method

.method private isAlgorithmEnable()Z
    .locals 3

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HDR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_hdr_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBokehOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHDR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "captureAfterLaunch"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "captureAfterLaunch"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "captureAfterLaunch"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return v2

    :cond_0
    return v4
.end method

.method private isCountDownMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGroupShotCapture()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isLaunchedByMainIntent()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isPortraitSuccessHintShowing()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isPortraitHintVisible()Z

    move-result v1

    return v1
.end method

.method private isPreviewVisible()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isSelectingCapturedImage()Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

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

.method private isShutterButtonClickable()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private needReturnInvisibleWatermark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mNeedSealCameraUUID:Z

    return v0
.end method

.method private needUpdateThumbProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private onDeparted()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

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

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restorePreferences()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private postStartPreview()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setPreviewCallback()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v4, v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSettingsBack()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5a

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private prepareGroupShot()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0, v1}, Lcom/android/camera/groupshot/GroupShot;->attach_start(I)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    :cond_0
    return-void

    :cond_1
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 6

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    return-void

    :cond_0
    sget-boolean v3, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Lcom/android/camera/PictureSize;->width:I

    iget v4, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v2, v3, :cond_2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/PictureSize;->width:I

    iget v5, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    :cond_3
    return-void
.end method

.method private previewBecomeInvisible()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previewBecomeVisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processXiaoAiControlAction(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v1, "android.intent.extras.XIAOAI_CONTROL_ACTION"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getTriggerMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private releaseEffectProcessor()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->release()V

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    :cond_0
    return-void
.end method

.method private releaseMediaProviderClient()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    return-void
.end method

.method private releaseResources()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    return-void
.end method

.method private resetGradienter()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    :cond_0
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v1}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xc4

    aput v2, v1, v3

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    :cond_1
    return-void
.end method

.method private restoreTopConfigAfterBurst()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    new-array v3, v6, [I

    const/16 v4, 0xc4

    aput v4, v3, v5

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v5, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    new-array v3, v6, [I

    const/16 v4, 0xc1

    aput v4, v3, v5

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v5, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    new-array v3, v6, [I

    const/16 v4, 0xc2

    aput v4, v3, v5

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    return-void
.end method

.method private resumePreview()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private saveJpegData([B)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v2, v13

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    move-object/from16 v0, v18

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v18

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v17

    const/16 v3, 0xb

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void

    :cond_0
    move-object/from16 v0, v18

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, v18

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 10

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->clearTopConfigBeforeBurst()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "pref_qc_camera_iso_key"

    aput-object v5, v4, v8

    aput-object v7, v4, v6

    const-string/jumbo v5, "pref_qc_camera_exposuretime_key"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    aput-object v7, v4, v9

    const-string/jumbo v5, "pref_camera_face_beauty_key"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aput-object v7, v4, v5

    const-string/jumbo v5, "pref_camera_shader_coloreffect_key"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    const/4 v5, 0x7

    aput-object v7, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "torch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const-string/jumbo v4, "pref_camera_flashmode_key"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "off"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    invoke-virtual {p0, v9}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    return-void
.end method

.method private sendBurstCommand()V
    .locals 6

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v4, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendDoCaptureMessage(J)V
    .locals 3

    const/16 v1, 0xf

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setOrientation(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkActivityOrientation()V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device orientation change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method private setOrientationParameter()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "xiaomi-preview-rotation"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "xiaomi-preview-rotation"

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_4
    return-void
.end method

.method private setPictureOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    goto :goto_1
.end method

.method private setPortraitSuccessHintVisible(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    return-void
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :cond_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    const-string/jumbo v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    const-string/jumbo v1, "save-image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getNeedSealCameraUUIDIntentExtras(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedSealCameraUUID:Z

    :cond_0
    return-void
.end method

.method private showObjectTrackToastIfNeeded()V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_tap_screen_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->removeMessages()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeInvisible()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setEffectViewVisible(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopMultiSnap()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreTopConfigAfterBurst()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchCamera(I)V

    return-void
.end method

.method private takeAPhotoIfNeeded()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCaptureAfterLaunch()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-static {v2, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    const-string/jumbo v3, "off"

    const/16 v4, 0xa3

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    :cond_1
    return-void
.end method

.method private trackBeautyInfo(I)V
    .locals 10

    const/4 v7, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "\u524d\u540e\u6444"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u524d\u6444"

    :goto_0
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v3

    const-string/jumbo v1, "pref_beautify_slim_face_ratio_key"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u7626\u8138"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pref_beautify_enlarge_eye_ratio_key"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u5927\u773c"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pref_beautify_skin_color_ratio_key"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u7f8e\u767d"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pref_beautify_skin_smooth_ratio_key"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u5ae9\u80a4"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "\u7b49\u7ea7"

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isAdvancedBeautyOn(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "advanced"

    :goto_1
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "capture"

    const-string/jumbo v6, "picture_taken_beauty_legacy"

    int-to-long v8, p1

    invoke-static {v5, v6, v8, v9, v2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v5, "\u540e\u6444"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "pref_beautify_slim_face_ratio_key"

    invoke-static {v5, v7}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u7626\u8138"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "pref_beautify_enlarge_eye_ratio_key"

    invoke-static {v5, v7}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u5927\u773c"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "pref_beautify_skin_color_ratio_key"

    invoke-static {v5, v7}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u7f8e\u767d"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v5, v7}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "\u5ae9\u80a4"

    invoke-static {v4}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "\u7b49\u7ea7"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "capture"

    const-string/jumbo v6, "picture_taken_beauty"

    int-to-long v8, p1

    invoke-static {v5, v6, v8, v9, v2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_2
.end method

.method private trackLostPhotos()V
    .locals 5

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CameraModule.trackLostPhotos.mCameraState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCameraModeName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CameraModule.trackLostPhotos.mModeName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "lost_picture"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private trackManualInfo(I)V
    .locals 8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "pref_camera_whitebalance_key"

    const v5, 0x7f0f0068

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u767d\u5e73\u8861"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "\u5bf9\u7126"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraStatUtil;->focusPositionToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "pref_qc_camera_exposuretime_key"

    const v5, 0x7f0f0171

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "\u5feb\u95e8"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "pref_qc_camera_iso_key"

    const v5, 0x7f0f00d5

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\u611f\u5149\u5ea6"

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "\u955c\u5934"

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "\u5cf0\u503c\u5bf9\u7126"

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "on"

    :goto_0
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "\u5bf9\u7126\u66dd\u5149\u5206\u79bb"

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isManualSplitMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "on"

    :goto_1
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "capture"

    const-string/jumbo v5, "picture_taken_manual"

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7, v2}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v4, "off"

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "off"

    goto :goto_1
.end method

.method private trackTakePictureCost(J)V
    .locals 7

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    const-wide/32 v2, 0x186a0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u524d\u540e\u6444"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u524d\u6444"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "\u6a21\u5f0f"

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "capture"

    const-string/jumbo v2, "take_picture_cost"

    const/16 v3, 0x32

    invoke-static {p1, p2, v3}, Lcom/android/camera/CameraStatUtil;->round(JI)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackTakePictureCost wrong time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", start time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private tryEnableHHT()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->enhanceBeautyWithHHT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    goto :goto_0
.end method

.method private uninstallIntentFilter()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    :cond_0
    return-void
.end method

.method private updateLyingSensorState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setRotationIndicatorEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateMutexModeUI(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const v1, 0x7f0f01c7

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needUpdateThumbProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/camera/module/CameraModule;->updateThumbProgress(Z)V

    :cond_1
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 9

    const/16 v8, 0xa3

    const/16 v7, 0xc1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_scenemode_setting_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v8, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    invoke-virtual {v3, v8, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    const/16 v3, 0xc2

    filled-new-array {v7, v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v3, v6, [I

    const/16 v4, 0xc2

    aput v4, v3, v5

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem([I)V

    if-eqz v0, :cond_3

    new-array v3, v6, [I

    aput v7, v3, v5

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem([I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-array v3, v6, [I

    aput v7, v3, v5

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem([I)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_2

    new-array v3, v5, [I

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem([I)V

    goto :goto_1
.end method

.method private updateStereoSettings(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_camera_flashmode_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref_camera_hdr_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method private updateThumbProgress(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    return-void
.end method

.method private writeImage([BI)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".dng"

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write image to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5, v4}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected applyMultiShutParameters(Z)V
    .locals 0

    return-void
.end method

.method public autoFocus()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_0
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    return-void
.end method

.method public capture()Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v2, v7, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    iput-object v6, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/camera/Device;->IS_C1:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/camera/Device;->IS_C8:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/camera/Device;->IS_E4:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_2
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPictureOrientation()V

    invoke-static {}, Lcom/android/camera/Device;->isUDCFPortraitNeedRotation()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRotation 0 for UDCF portrait mode"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    const/16 v2, 0x100

    if-ne v2, v1, :cond_3

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-virtual {v2, v0}, Lcom/android/camera/module/CameraModule$CameraCategory;->takePicture(Landroid/location/Location;)V

    invoke-static {}, Lcom/android/camera/Device;->isCaptureStopFaceDetection()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iput-object v6, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iput v5, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareGroupShot()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needUpdateThumbProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v5}, Lcom/android/camera/module/CameraModule;->updateThumbProgress(Z)V

    :cond_6
    const/4 v2, 0x1

    return v2

    :cond_7
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRotation -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_0
.end method

.method public checkDisplayOrientation()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setCameraDisplayOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public closeCamera()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    :cond_2
    return-void
.end method

.method public doLaterRelease()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doLaterRelease"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseEffectProcessor()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseMediaProviderClient()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->release(Z)V

    return-void
.end method

.method public enableFakeThumbnail()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFakeThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isAlgorithmEnable()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method protected enterMutexMode()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "camera module is paused!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f005e

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    const-string/jumbo v2, "pref_camera_coloreffect_key"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    const v1, 0x7f0f01c8

    invoke-virtual {p0, v7, v1, v4}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    return-void
.end method

.method protected exitMutexMode()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exitMutexMode camera module is paused!!!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f005e

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    :cond_4
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v5, :cond_6

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_1
.end method

.method protected exitWhiteBalanceLockMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findQRCode()V
    .locals 0

    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getMaxPictureSizeSafely(Ljava/util/List;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    return-object v0
.end method

.method protected getBurstCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getGroupShotNum()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected getBurstDelayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCameraRotation()I
    .locals 2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getGroupShotNum()I
    .locals 5

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected getMaxPictureSizeSafely(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSize()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v5, v1, :cond_0

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "find the match picture size use the limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no picture size match limit, ignore the limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    return v4
.end method

.method protected getMutexHdrMode(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "live"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected getParallelProcessingFileTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequestFlashMode()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportSceneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "off"

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleDelayShutter()V
    .locals 4

    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto :goto_0
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$6;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreStatusAfterBurst()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    return-void
.end method

.method public initGroupShot(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/android/camera/groupshot/GroupShot;

    invoke-direct {v0}, Lcom/android/camera/groupshot/GroupShot;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isISPRotated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    goto :goto_0
.end method

.method protected initializeAfterCameraOpen()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    return-void
.end method

.method public initializeCapabilities()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "auto"

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    const-string/jumbo v0, "continuous-picture"

    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public initializeFirstTime()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    return-void
.end method

.method public initializeFocusManager()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    goto :goto_0
.end method

.method protected isAutoRestartInNonZSL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isBokehOn()Z
    .locals 3

    const-string/jumbo v0, "on"

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method protected isDefaultManualExposure()Z
    .locals 2

    const-string/jumbo v0, "pref_qc_camera_iso_key"

    const v1, 0x7f0f00d5

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0f0171

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isDetectedHDR()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected isDetectedHHT()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v3, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-ne v3, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v4, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v4, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isDoingAction()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isFrontMirror()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFrontMirror()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f01d1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0f01d2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "edof"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isParallelProcessing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSceneMotion()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportFocusShoot()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFocusShoot()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_focus_shoot_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isGlobalSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiCapture()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    return v8

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v3}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0f0158

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v8

    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ImageSaver is full, wait for a moment!"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    const v4, 0x7f0f0272

    invoke-virtual {v3, v4, v8}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v8

    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    const/4 v0, 0x0

    const/16 v3, 0x100

    if-ne v3, v1, :cond_5

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    sget-boolean v3, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareMultiCapture()V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->saveStatusBeforeBurst()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    iput v10, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    :goto_0
    iput-boolean v8, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v4, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    invoke-direct {v4, p0, v9}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;)V

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v6, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v3, v4, v5, v9, v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb8

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    invoke-interface {v2, v10}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumVisible(Z)V

    return v10

    :cond_7
    iput v8, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iput-object v9, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needSetupPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyError()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/BeautyHandler;->releaseMakeupRender()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->finish()V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBeautyParameterChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip beauty parameter change"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCameraEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBeautyStatusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/BeautyHandler;->onBeautyStatusChanged(Z)V

    return-void
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationMonitor;->hasAnimationRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setData([B)V

    :cond_0
    return-void
.end method

.method protected onCameraOpened()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraOpened: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeFocusManager()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extras.EXTRAS_CAPTURE_ACTION_DONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    :goto_0
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCameraStartPreview()V
    .locals 0

    return-void
.end method

.method public onCameraSwitched()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "camera is already closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/BeautyHandler;->onCameraSwitched(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v4

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    new-instance v0, Lcom/android/camera/module/BeautyHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BeautyHandler;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setupCaptureParams()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeMutexMode()V

    new-instance v0, Lcom/android/camera/AudioCaptureManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/AudioCaptureManager;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/module/BeautyHandler;->onCreate(IILcom/android/camera/Camera;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraOpened()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/MutexModeManager;->setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->hideToast()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->cancelRunningInvisibleWatermarkTask()V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mNeedSealCameraUUID:Z

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isLaunchedByMainIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->isMainIntentActivityLaunched()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "should not do later release to avoid release the camera hold by main activity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/BeautyHandler;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/MutexModeManager;->setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    goto :goto_0
.end method

.method public onFaceBeautySwitched(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "pref_camera_face_beauty_advanced_key"

    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFaceBeautySwitch(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void

    :cond_0
    const-string/jumbo v0, "pref_camera_face_beauty_key"

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearIndicator(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    aget-object v1, v0, v2

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    goto :goto_0
.end method

.method public onFilterChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->triggerFocusOnly(II)V

    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onGradienterSwitched(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    :cond_1
    return v1

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->restoreBottom()V

    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    const/16 v2, 0x18

    if-eq p1, v2, :cond_7

    const/16 v2, 0x58

    if-ne p1, v2, :cond_6

    move v0, v1

    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_7
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x58

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xab

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(II)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onSingleTapUp(II)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setTriggerMode(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->performHapticFeedback(I)V

    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->updateExposure(II)V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    return-void
.end method

.method public onMutexModeChanged(II)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryEnableHHT()V

    :cond_0
    return-void
.end method

.method public onObjectStable()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_capture_when_stable_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Object is Stable, call onShutterButtonClick to capture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(II)V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->setOrientation(II)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->trackLostPhotos()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseEffectProcessor()V

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->uninstallIntentFilter()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->execPendingEventInHandle()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SensorStateManager;->reset()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->onPause()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v0

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    :cond_8
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    :cond_9
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v2, :cond_a

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    move v2, v3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_1
.end method

.method public onPortraitZoomChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animatePortraitZoomCopyTexture()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/BeautyHandler;->onPreviewFrame([BLandroid/hardware/Camera;)V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    return-void
.end method

.method public onPreviewPixelsRead([BII)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateShutter()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    sub-int v1, v4, v5

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v4

    if-eqz v4, :cond_0

    rem-int/lit16 v4, v1, 0xb4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4, v0, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 6

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "onPreviewSizeChanged: %dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 2

    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->animateSwitchCamera()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->init()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initEffectCropView()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resumePreview()V

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BeautyHandler;->onCameraSwitched(Z)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeSecondTime()V

    goto :goto_0
.end method

.method public onReviewCancelClicked()V
    .locals 3
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked()V
    .locals 0
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x28

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "pref_delay_capture_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetZoom()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_camera_flashmode_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref_camera_hdr_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f0f0223

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->hideTipMessage(I)V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutterButtonClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCountDownTimes()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    if-le v0, v5, :cond_1

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    :cond_1
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ImageSaver is full, wait for a moment!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    const v2, 0x7f0f0272

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->setTriggerMode(I)V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isObjectTrackFailed()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    :cond_5
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needAutoFocusBeforeCapture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    :cond_6
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v5, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->prepareCapture(ZI)V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    :cond_9
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 3

    const/16 v2, 0xc

    const/4 v1, 0x0

    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->cancelMultiSnapPending()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return-void

    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->canTakePicture()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSwitchZeroShotMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    :goto_1
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_1
.end method

.method public onShutterButtonLongClick()Z
    .locals 6
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    :cond_2
    return v4

    :cond_3
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    return v2
.end method

.method public onShutterButtonLongClickCancel()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSingleTapUp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2, v5}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showObjectTrackToastIfNeeded()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SensorStateManager;->reset()V

    :cond_6
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseMediaProviderClient()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BeautyHandler;->onStop(Lcom/android/camera/CameraManager$CameraProxy;)V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    :cond_0
    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetEvValue()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setEvAdjustable(Z)V

    return-void
.end method

.method public onTrackShutterButtonMissTaken(J)V
    .locals 9

    const-wide/16 v6, 0x64

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCameraModeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "capture"

    const-string/jumbo v3, "picture_miss_taken"

    div-long v4, p1, v6

    mul-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onTrackShutterButtonTaken(J)V
    .locals 9

    const-wide/16 v6, 0x64

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "capture"

    const-string/jumbo v3, "picture_taken_gap"

    div-long v4, p1, v6

    mul-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method protected openSettingActivity()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "from_where"

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "IsCaptureIntent"

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->trackGotoSettings()V

    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->restoreBottom()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    goto :goto_0
.end method

.method protected playAnimationBeforeCapture()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isAutoRestartInNonZSL()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNeedComposed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public playSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playCameraSound(I)V

    :cond_1
    return-void
.end method

.method public portraitZoomSwitching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    return v0
.end method

.method protected prepareCapture()V
    .locals 0

    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->applyMultiShutParameters(Z)V

    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->hideTipMessage(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start to switch camera. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearIndicator(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/BeautyHandler;->prepareSwitchCamera()V

    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 7

    const-wide/16 v4, 0x3e8

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSoundPlayTime()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    const-wide/16 v4, 0x1f4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v6

    :goto_0
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public registerProtocol()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAILens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/16 v2, 0xa4

    const/16 v3, 0xae

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void
.end method

.method protected removeHandlerMessages()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->execPendingEventInHandle()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestRender()V
    .locals 0

    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 0

    return-void
.end method

.method protected resetMetaDataManager()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->reset()V

    :cond_0
    return-void
.end method

.method public resetMutexModeManually()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneData()V

    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDelayedCaptureMessage(II)V
    .locals 3

    const/16 v2, 0x14

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, p2}, Lcom/android/camera/CameraSettings;->setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setBeautyParams()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraPortraitWithFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v9}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStillBeautify="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v1

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_skin_color_ratio_key"

    aget v6, v1, v8

    aget v7, v1, v9

    invoke-static {v5, v6, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_slim_face_ratio_key"

    aget v6, v1, v8

    aget v7, v1, v9

    invoke-static {v5, v6, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_skin_smooth_ratio_key"

    aget v6, v1, v8

    aget v7, v1, v9

    invoke-static {v5, v6, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_enlarge_eye_ratio_key"

    aget v6, v1, v8

    aget v7, v1, v9

    invoke-static {v5, v6, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStillBeautify="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "4"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_skin_color_ratio_key"

    invoke-static {v5, v8}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_slim_face_ratio_key"

    invoke-static {v5, v8}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v5, v8}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_beautify_enlarge_eye_ratio_key"

    invoke-static {v5, v8}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v3, 0xa3

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_8

    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyCloseValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStillBeautify="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v3, 0xab

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_9
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyCloseValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStillBeautify="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setCameraParameters(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method protected setCameraParametersWhenIdle(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateSceneModeUI()V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setCameraState(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setDeparted()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onDeparted()V

    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_0
    return-void
.end method

.method protected setManualParameters()V
    .locals 0

    return-void
.end method

.method protected setMetaCallback(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v1, :cond_4

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setType(I)V

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-wrap0(Lcom/android/camera/module/CameraModule$MetaDataManager;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected setMetaCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setMetaCallback(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setPreviewCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    return-void
.end method

.method protected setTimeWatermarkIfNeed()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setupPreview()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x258

    const/16 v6, 0x1a

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v7, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v2, v4, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/camera/FocusManager;->resetAfterCapture(Z)V

    iput-boolean v7, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2, v7}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v3

    int-to-long v4, v3

    const/16 v3, 0x24

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getLastFocusFrom()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_1
.end method

.method public shouldReleaseLater()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    const v1, 0x7f0f0171

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAiLens()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$5;-><init>(Lcom/android/camera/module/CameraModule;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isAdjustingObjectView()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setActiveIndicator(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    invoke-virtual {p0, v2, v2}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    :cond_5
    return-void
.end method

.method public startObjectTracking()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mCameraState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v2, v6, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setActiveIndicator(I)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "auto"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    const-string/jumbo v3, "off"

    const/16 v4, 0xa3

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startObjectTracking rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    :cond_4
    return-void
.end method

.method public startPreview()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_6

    const-string/jumbo v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFoundFace:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_7
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extras.EXTRAS_CAPTURE_ACTION_DONE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    :goto_0
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setActiveIndicator(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    :cond_4
    return-void
.end method

.method public stopObjectTracking(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " restartFD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getActiveIndicator()I

    move-result v0

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onStopObjectTrack()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setActiveIndicator(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isAdjustingObjectView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->onStopObjectTrack()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    :cond_5
    return-void
.end method

.method public stopPreview()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    :cond_2
    return-void
.end method

.method protected trackModeCustomInfo(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->trackManualInfo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->trackBeautyInfo(I)V

    goto :goto_0
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAILens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method protected updateASD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBokehPreference()V
    .locals 2

    const/16 v1, 0x2c

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f0f0224

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->hideTipMessage(I)V

    goto :goto_0
.end method

.method protected updateCameraParametersInitialize()V
    .locals 6

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "video-stabilization"

    const-string/jumbo v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v22

    if-eqz v22, :cond_28

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "pictureSize="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v29

    if-eqz v29, :cond_5

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :goto_0
    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    move/from16 v30, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v31, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v23

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v24

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v29, v0

    if-eqz v29, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_7

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    :cond_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x15

    move/from16 v0, v30

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_8
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "thumbnailSize="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v29

    if-eqz v29, :cond_29

    const-string/jumbo v29, "hdr"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    const-string/jumbo v29, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    const-string/jumbo v29, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    const-string/jumbo v30, "auto"

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_a
    :goto_1
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "sceneMode="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " mutexMode="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "sceneMode="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " pas="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/CameraSettings;->getJpegQuality(Z)Ljava/lang/String;

    move-result-object v16

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "jpegQuality="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v27

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "EV="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v18

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c

    move/from16 v0, v27

    move/from16 v1, v17

    if-gt v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v29

    if-eqz v29, :cond_2e

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v10

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "shaderEffect="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    new-instance v29, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    move/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->prepareEffectRender(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    :cond_d
    :goto_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v29

    const-string/jumbo v30, "pref_camera_autoexposure_key"

    const v31, 0x7f0f0135

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "autoExposure="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/module/CameraModule;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v6

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "antiBanding="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v29, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_f

    const-string/jumbo v29, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_32

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    move/from16 v29, v0

    if-nez v29, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v29

    if-eqz v29, :cond_12

    const-string/jumbo v29, "off"

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_12

    const-string/jumbo v29, "torch"

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_12

    const-string/jumbo v29, "off"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    const-string/jumbo v30, "off"

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v29

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v29

    if-eqz v29, :cond_13

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v29, v0

    if-nez v29, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2f

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2f

    const-string/jumbo v14, "auto"

    :goto_6
    if-eqz v14, :cond_18

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v29

    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    move/from16 v29, v0

    if-eqz v29, :cond_30

    :cond_15
    :goto_7
    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_16
    const-string/jumbo v29, "macro"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    const-string/jumbo v29, "manual"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    :cond_17
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    :cond_18
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "focusMode="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v29, "pref_camera_whitebalance_key"

    const v30, 0x7f0f0068

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_31

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_19

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "continuous-picture"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :cond_1b
    :goto_9
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v29, v0

    if-nez v29, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v29

    if-nez v29, :cond_1c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v29

    if-nez v29, :cond_1c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v29

    if-eqz v29, :cond_36

    :cond_1c
    const/4 v11, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-object/from16 v29, v0

    xor-int/lit8 v30, v11, 0x1

    invoke-interface/range {v29 .. v30}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setSkipDrawFace(Z)V

    :cond_1d
    if-eqz v11, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v29, v0

    if-nez v29, :cond_1e

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v29

    if-eqz v29, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getZoomValue()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v29

    if-eqz v29, :cond_3a

    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    const/16 v30, 0x11

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v29

    if-eqz v29, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v29

    if-lez v29, :cond_20

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-nez v29, :cond_21

    :cond_20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v29

    if-nez v29, :cond_21

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v29

    if-eqz v29, :cond_3b

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v29, v0

    if-eqz v29, :cond_22

    sget-boolean v29, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v29, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    :cond_23
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v29

    if-eqz v29, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_24
    const-string/jumbo v29, "auto"

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v29

    if-eqz v29, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v29

    if-eqz v29, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBokehOn()Z

    move-result v29

    if-eqz v29, :cond_3c

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "bokeh=enable"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableBokeh(Landroid/hardware/Camera$Parameters;)V

    :cond_25
    :goto_e
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v29

    if-eqz v29, :cond_26

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-nez v29, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3d

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_3d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v29

    if-eqz v29, :cond_3d

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "time watermark on"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string/jumbo v31, "on"

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_f
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v29

    if-eqz v29, :cond_27

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-nez v29, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3e

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_3e

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v29

    if-eqz v29, :cond_3e

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "dual watermark on"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string/jumbo v31, "on"

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_28
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "get null pictureSize"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v22

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v29, "pref_camera_scenemode_setting_key"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2a

    const-string/jumbo v29, "auto"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2a
    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    const-string/jumbo v29, "auto"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2c
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "invalid exposure range: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2d
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "Error!!! the activity should not be null"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2e
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v8

    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "colorEffect="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v8, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_6

    :cond_30
    const-string/jumbo v29, "manual"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_16

    goto/16 :goto_7

    :cond_31
    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string/jumbo v31, "auto"

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v29

    if-eqz v29, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v29

    if-eqz v29, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v29

    if-eqz v29, :cond_34

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    :cond_34
    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string/jumbo v31, "continuous-picture"

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v29, v0

    const-string/jumbo v30, "continuous-picture"

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_9

    :cond_36
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v29

    if-nez v29, :cond_37

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v29

    if-nez v29, :cond_37

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v29

    if-nez v29, :cond_37

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v29

    if-nez v29, :cond_37

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v29

    if-eqz v29, :cond_38

    :cond_37
    const/4 v11, 0x1

    goto/16 :goto_a

    :cond_38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v29

    const-string/jumbo v30, "pref_camera_facedetection_key"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0c0006

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    goto/16 :goto_a

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1e

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_b

    :cond_3a
    const/16 v29, 0x0

    goto/16 :goto_c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_d

    :cond_3c
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "bokeh=disable"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_e

    :cond_3d
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "time watermark off"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string/jumbo v31, "off"

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_3e
    sget-object v29, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "dual watermark off"

    invoke-static/range {v29 .. v30}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    const-string/jumbo v31, "off"

    invoke-virtual/range {v29 .. v31}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method protected updateExitButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateFaceView(ZZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x23

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public updateFlashPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public updateHDRPreference()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    const-string/jumbo v3, "pref_camera_hdr_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method protected updateModePreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setManualParameters()V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryEnableHHT()V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v3, "pref_camera_hand_night_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHHT()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_7
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    :cond_8
    const-string/jumbo v3, "pref_camera_ubifocus_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    goto :goto_0
.end method
