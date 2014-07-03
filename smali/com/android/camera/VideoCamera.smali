.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ModeChangeManager$OnModeChangeListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$VideoNamer;,
        Lcom/android/camera/VideoCamera$JpegPictureCallback;,
        Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;,
        Lcom/android/camera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;,
        Lcom/android/camera/VideoCamera$DefaultHashMap;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioEncoder:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseFileName:Ljava/lang/String;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mCameraDisplayOrientation:I

.field private mCaptureButton:Lcom/android/camera/ui/RotateImageView;

.field private mCaptureTimeLapse:Z

.field private mCurrentFileNumber:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field mFocusManager:Lcom/android/camera/FocusManagerVideo;

.field private final mHandler:Landroid/os/Handler;

.field private mHfr:Ljava/lang/String;

.field private mIsFromStop:Z

.field private mIsMultiSplitFile:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mResetEffect:Z

.field private mRestartPreview:Z

.field private mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/RotateImageView;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSnapshotInProgress:Z

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceWidth:I

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mUIRestoreRunnable:Ljava/lang/Runnable;

.field private mUnsupportedHFRVideoCodec:Z

.field private mUnsupportedHFRVideoSize:Z

.field mUnsupportedResolution:Z

.field private mVideoEncoder:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

.field private mVideoSnapSizeChanged:Z

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 257
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 259
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 261
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 263
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 266
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 270
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "qcelp"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "evrc"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "1280x720"

    const-string v2, "720P"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "800x480"

    const-string v2, "WVGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "640x480"

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "432x240"

    const-string v2, "WQVGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "320x240"

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMultiSplitFile:Z

    .line 163
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    .line 165
    iput v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 166
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 167
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mLastBackPressedTime:J

    .line 173
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 199
    iput v2, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 204
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 212
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 218
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    .line 219
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    .line 294
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 297
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 381
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1785
    new-instance v0, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mUIRestoreRunnable:Ljava/lang/Runnable;

    .line 3337
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoCamera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->enableExitButton(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoCamera;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoCamera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoCamera;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/VideoCamera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoCamera;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoCamera;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoCamera;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mUIRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoCamera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startRecordVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;)Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoCamera;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->showUserMsg(I)V

    return-void
.end method

.method private addVideoToMediaStore()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1686
    const/4 v2, 0x0

    .line 1687
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_4

    .line 1688
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1690
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsMultiSplitFile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 1693
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 1694
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 1695
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1697
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1702
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1704
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getCurrentFileName()Ljava/lang/String;

    move-result-object v0

    .line 1705
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1706
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1708
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->addSecureNum(I)V

    .line 1709
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1713
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1726
    :goto_2
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1727
    return v0

    .line 1690
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v4

    goto :goto_0

    .line 1699
    :cond_3
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1714
    :catch_0
    move-exception v0

    .line 1717
    :try_start_1
    const-string v1, "videocamera"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1718
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->addSecureNum(I)V

    .line 1719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1723
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1724
    goto :goto_2

    .line 1723
    :catchall_0
    move-exception v0

    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private capture()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2820
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2821
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d011c

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2845
    :cond_0
    :goto_0
    return v0

    .line 2826
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2830
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2831
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 2832
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    goto :goto_0

    .line 2836
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2837
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2838
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2839
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2841
    const-string v2, "videocamera"

    const-string v3, "Video snapshot start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v3, Lcom/android/camera/VideoCamera$JpegPictureCallback;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/VideoCamera$JpegPictureCallback;-><init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v2, v6, v6, v6, v3}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2843
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 2844
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    move v0, v1

    .line 2845
    goto :goto_0
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 3045
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 3046
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3047
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 3049
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3052
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 3053
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1337
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1343
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 3331
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    if-eqz v0, :cond_0

    .line 3332
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->finish()V

    .line 3333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 3335
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    .line 1096
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1110
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1112
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 1120
    if-eqz p1, :cond_1

    .line 1121
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeEffects()V

    .line 1124
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1125
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1126
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1127
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1128
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1129
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1130
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1131
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 1083
    const-string v0, "videocamera"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 1085
    const-string v0, "videocamera"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 1091
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3303
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3307
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3309
    :cond_0
    return-void

    .line 3304
    :catch_0
    move-exception v0

    .line 3305
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3294
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3295
    const-string v0, ".mp4"

    .line 3297
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3287
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3288
    const-string v0, "video/mp4"

    .line 3290
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 406
    iget v2, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    if-gtz v2, :cond_0

    .line 407
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 408
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0d00ed

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mBaseFileName:Ljava/lang/String;

    .line 412
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMultiSplitFile:Z

    .line 413
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mBaseFileName:Ljava/lang/String;

    .line 416
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 415
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsMultiSplitFile:Z

    .line 416
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mBaseFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1732
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1734
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1735
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1737
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1741
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1744
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1747
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1323
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1325
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1326
    const/4 v0, -0x1

    .line 1327
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1331
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResultEx(ILandroid/content/Intent;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1333
    return-void

    .line 1329
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2888
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableExitButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3179
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHDRExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3180
    return-void
.end method

.method private enableExitButtonIfNeed(Z)V
    .locals 3

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00fb

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3104
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3107
    :cond_0
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 9

    .prologue
    .line 1624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1625
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1631
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1632
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1641
    if-eqz v0, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1643
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1646
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1647
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getCurrentFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1667
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    if-lez v1, :cond_0

    .line 1668
    const-string v1, "_%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1669
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/camera/VideoCamera;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_0
    return-object v0
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 896
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 898
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 921
    :goto_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 901
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 902
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 903
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 905
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 906
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 907
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_2

    .line 908
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 911
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraParameters;->isSingleOutputEnabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 912
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 914
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 915
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 918
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto/16 :goto_0
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1651
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1653
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1654
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1656
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 421
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 422
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 427
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2054
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2055
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mThumbnailViewWidth:I

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2057
    .local v0, "videoFrame":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2058
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v3, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 2059
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2062
    .end local v0    # "videoFrame":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .param p1, "deltaMs"    # J

    .prologue
    .line 2250
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2251
    .local v0, "numberOfFrames":D
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2095
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2096
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2097
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2099
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2100
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2102
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2103
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2106
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHDRExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2746
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2750
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    .line 2751
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2752
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/RotateImageView;

    .line 2753
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2757
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2774
    :cond_0
    :goto_0
    return-void

    .line 2761
    :cond_1
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 2762
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 2763
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 2764
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 2765
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2766
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2767
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2768
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailViewWidth:I

    .line 2770
    new-instance v0, Lcom/android/camera/ModeChangeManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ModeChangeManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    .line 2771
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 2772
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModeChangeManager;->setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V

    goto :goto_0
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1498
    const-string v1, "videocamera"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1540
    :goto_0
    return-void

    .line 1502
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1505
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v1, v1, v2

    .line 1507
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 1508
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    invoke-direct {v2, p0}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1512
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1513
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1514
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1515
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1516
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1517
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1518
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1525
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1526
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    .line 1528
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1530
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1532
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1534
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1536
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1538
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 13

    .prologue
    const-wide v6, 0xd09dc300L

    const-wide/32 v4, 0x17d7840

    const-wide/16 v2, 0x0

    .line 1543
    const-string v0, "videocamera"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1549
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1550
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1551
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1552
    if-eqz v0, :cond_0

    .line 1554
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1556
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1565
    :goto_1
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1569
    iget-boolean v8, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_1

    .line 1570
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v9, 0x408f400000000000L

    iget v11, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1576
    :goto_2
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_2

    .line 1577
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1584
    :goto_3
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v8}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v8

    const-wide/32 v10, 0x2faf080

    sub-long/2addr v8, v10

    .line 1585
    cmp-long v10, v6, v8

    if-gez v10, :cond_3

    .line 1590
    :goto_4
    cmp-long v8, v6, v4

    if-gez v8, :cond_5

    .line 1593
    :goto_5
    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    .line 1596
    :goto_6
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1597
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1598
    return-void

    .line 1557
    :catch_0
    move-exception v0

    .line 1559
    const-string v8, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1572
    :cond_1
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1579
    :cond_2
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v8}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1580
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1588
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    move-wide v6, v8

    goto :goto_4

    :cond_4
    move-wide v0, v4

    goto :goto_6

    :cond_5
    move-wide v4, v6

    goto :goto_5

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 2559
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v1, v5, v6

    .line 2560
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_0

    .line 2561
    .local v2, "mirror":Z
    :goto_0
    iget v5, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    iget v6, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v3

    .line 2562
    .local v3, "orientation":I
    new-instance v5, Lcom/android/camera/FocusManagerVideo;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v7}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/android/camera/FocusManagerVideo;-><init>(IIZI)V

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    .line 2564
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2565
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2566
    .local v4, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2567
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerVideo;->setPreviewSize(II)V

    .line 2568
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerVideo;->setRenderSize(II)V

    .line 2569
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 2570
    return-void

    .line 2560
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "mirror":Z
    .end local v3    # "orientation":I
    .end local v4    # "point":Landroid/graphics/Point;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2777
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2778
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2779
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2780
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 2782
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2783
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2784
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2785
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2786
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 2795
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2799
    :cond_0
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2805
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2806
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2808
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    .line 2809
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2817
    return-void
.end method

.method private initializeRecorder()V
    .locals 11

    .prologue
    const/16 v10, 0x500

    const/16 v9, 0x2d0

    const/4 v6, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 1347
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1495
    :goto_0
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1352
    const-string v0, "videocamera"

    const-string v1, "SurfaceTexture is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1357
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1359
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    .line 1360
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    .line 1361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 1363
    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    if-ne v0, v7, :cond_2

    .line 1364
    iget v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-lt v0, v10, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-lt v0, v9, :cond_2

    .line 1365
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 1366
    const v0, 0x7f0d0163

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1372
    :cond_2
    const-wide/16 v0, 0x0

    .line 1373
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1374
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 1375
    const-string v0, "output"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1376
    if-eqz v0, :cond_3

    .line 1378
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "rw"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1380
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1388
    :cond_4
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1391
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1392
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1393
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getVideoHighFrameRate()Ljava/lang/String;

    move-result-object v3

    .line 1394
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v4, :cond_a

    if-eqz v3, :cond_5

    const-string v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1395
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1396
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    iput v5, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1400
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1402
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    iput v5, v4, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1403
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    iput v5, v4, Landroid/media/CamcorderProfile;->duration:I

    .line 1405
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1406
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1407
    if-eqz v3, :cond_b

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v3, v10, :cond_b

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v3, v9, :cond_b

    .line 1408
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x3d0900

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1422
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_7

    .line 1423
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1426
    :cond_7
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 1427
    if-eqz v2, :cond_8

    .line 1428
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1436
    :cond_8
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_d

    .line 1437
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1444
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    sub-long/2addr v2, v4

    .line 1445
    const-wide v4, 0xd09dc300L

    cmp-long v4, v4, v2

    if-gez v4, :cond_e

    .line 1446
    const-wide v2, 0xd09dc300L

    .line 1450
    :goto_5
    const-wide/32 v4, 0x17d7840

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 1451
    const-wide/32 v2, 0x17d7840

    .line 1453
    :cond_9
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_11

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 1457
    :goto_6
    :try_start_1
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxFileSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1472
    :goto_7
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1473
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    if-eq v1, v8, :cond_10

    .line 1474
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v7, :cond_f

    .line 1475
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1482
    :goto_8
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1483
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1486
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1493
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1383
    const-string v1, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1398
    :cond_a
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v8, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_2

    .line 1409
    :cond_b
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1410
    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1412
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1416
    if-ne v2, v6, :cond_c

    .line 1417
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x7a1200

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_3

    .line 1418
    :cond_c
    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 1419
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0xe4e1c0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_3

    .line 1439
    :cond_d
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1440
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1448
    :cond_e
    iput v8, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    goto/16 :goto_5

    .line 1477
    :cond_f
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_8

    .line 1480
    :cond_10
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto/16 :goto_8

    .line 1487
    :catch_1
    move-exception v0

    .line 1488
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1489
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1490
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1459
    :catch_2
    move-exception v0

    goto/16 :goto_7

    :cond_11
    move-wide v0, v2

    goto/16 :goto_6
.end method

.method private initializeSettingScreen()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 525
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Lcom/android/camera/VideoModeManager;

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    invoke-direct {v1, p0, v4, p0, p0}, Lcom/android/camera/VideoModeManager;-><init>(Landroid/app/Activity;ZLcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSimpleMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 529
    .local v0, "isSimpleMode":Z
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showIndicators(Z)V

    .line 530
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mShowWhenLocked:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/android/camera/ModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Z)V

    .line 532
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v1}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 533
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v4, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 534
    const v1, 0x7f060007

    invoke-virtual {p0, p0, v1}, Lcom/android/camera/VideoCamera;->initializeCameraControls(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;I)V

    .line 535
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/FlashButton;->setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->updateFlashButton()V

    .line 537
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "pref_video_quality_key"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    .line 542
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 529
    goto :goto_0

    :cond_3
    move v1, v3

    .line 530
    goto :goto_1
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1680
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1681
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1682
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
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
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2304
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

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1319
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2199
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2200
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2194
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2203
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2204
    .local v10, "seconds":J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2205
    .local v2, "minutes":J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2206
    .local v0, "hours":J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2207
    .local v6, "remainderMinutes":J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2209
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2212
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2213
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2214
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2216
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2218
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2222
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2223
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2225
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2226
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2229
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2230
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2232
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2235
    if-eqz p2, :cond_5

    .line 2236
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2237
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2238
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2239
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2241
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2244
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onRestartVideoRecording()V
    .locals 1

    .prologue
    .line 1875
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    if-nez v0, :cond_0

    .line 1876
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    .line 1877
    new-instance v0, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    .line 1878
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->start()V

    .line 1880
    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1251
    sget-object v0, Lcom/android/camera/CameraSettings;->sVideoChangeManager:Lcom/android/camera/ChangeManager;

    .line 1252
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1253
    invoke-virtual {v0, v4}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1254
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    .line 1255
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1257
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1258
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    goto :goto_0

    .line 1259
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1261
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 655
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 656
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->waitAsyncVideoRecording()V

    .line 657
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    .line 658
    .local v0, "recordFail":Z
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 659
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v2, :cond_2

    .line 661
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 671
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 672
    return-void

    .line 661
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 662
    :cond_2
    if-nez v0, :cond_0

    .line 663
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 666
    :cond_3
    if-nez v0, :cond_0

    .line 668
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getCameraRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 669
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1933
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    if-lez v0, :cond_0

    .line 1940
    :goto_0
    return-void

    .line 1936
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1939
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private qcomReadVideoPreferences()V
    .locals 7

    .prologue
    const v3, 0x7f0d0141

    const/4 v6, 0x1

    .line 721
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_videoencoder_key"

    const v2, 0x7f0d013e

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    sget-object v1, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    .line 725
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Encoder type in application="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_audioencoder_key"

    const v2, 0x7f0d013f

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    sget-object v1, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    .line 731
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Encoder type in application="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_duration_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 743
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 747
    const-string v0, "mms"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getVidoeDurationInMillis(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 753
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_powermode_key"

    const v2, 0x7f0d015a

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read videopreferences power mode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPowerMode()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v1, :cond_0

    .line 761
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPowerMode(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 767
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 768
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Video picture size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 770
    const-string v1, "Normal_Power"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v1, :cond_3

    .line 771
    const-string v0, "videocamera"

    const-string v1, "new Video size id different from old picture size , restart.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 779
    :cond_1
    :goto_2
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 740
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 750
    :cond_2
    const v0, 0x5265c00

    iput v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 773
    :cond_3
    const-string v1, "Low_Power"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private qcomSetCameraParameters()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2312
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0086

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2315
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2317
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2320
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2321
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 2324
    const-string v0, "debug.camera.yv12"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2325
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2326
    const-string v0, "videocamera"

    const-string v1, "preview format set to YV12"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const v1, 0x32315659

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 2330
    :cond_1
    const-string v0, "off"

    .line 2331
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_speed_key"

    const v3, 0x7f0d00fb

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2334
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2335
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v3

    .line 2339
    if-eqz v3, :cond_3

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    :cond_2
    sget-boolean v2, Lcom/android/camera/Device;->IS_MITWO:Z

    if-nez v2, :cond_e

    .line 2342
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2343
    if-eqz v3, :cond_4

    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2344
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2345
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2352
    :cond_4
    :goto_0
    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2353
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_f

    const-string v0, "off"

    .line 2356
    :goto_1
    const-string v1, "fast"

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    :cond_5
    move-object v1, v0

    .line 2359
    const-string v0, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2360
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2362
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current set resolution is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2365
    if-eqz v0, :cond_6

    .line 2366
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supported hfr size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iget v3, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v3, v0, :cond_6

    .line 2368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2369
    const-string v0, "videocamera"

    const-string v2, "Current hfr resolution is supported"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2378
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    if-eqz v0, :cond_8

    .line 2379
    const-string v0, "videocamera"

    const-string v2, "Unsupported hfr resolution"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_8
    const-string v0, "120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x500

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v0, v2, :cond_9

    const/16 v0, 0x2d0

    iget v2, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v0, v2, :cond_9

    .line 2381
    const-string v1, "90"

    .line 2382
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0d0162

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2384
    :cond_9
    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    .line 2385
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 2388
    :cond_a
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoHighFrameRateModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2390
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoHighFrameRate(Ljava/lang/String;)V

    .line 2393
    :cond_b
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->supportHDR()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2395
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2396
    const-string v1, "setVideoHDRMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2397
    if-eqz v1, :cond_c

    .line 2398
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_10

    const-string v0, "on"

    :goto_3
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2407
    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->supportLowPowerMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2408
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoCaptureEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Normal_Power"

    :goto_5
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPowerMode(Ljava/lang/String;)V

    .line 2411
    :cond_d
    return-void

    .line 2348
    :cond_e
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_0

    .line 2353
    :cond_f
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hfr_key"

    const v2, 0x7f0d00f0

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2374
    :catch_0
    move-exception v0

    .line 2375
    const-string v0, "videocamera"

    const-string v2, "supported hfr sizes is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2398
    :cond_10
    :try_start_2
    const-string v0, "off"
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 2408
    :cond_11
    const-string v0, "Low_Power"

    goto :goto_5

    .line 2403
    :catch_1
    move-exception v0

    goto :goto_4

    .line 2402
    :catch_2
    move-exception v0

    goto :goto_4

    .line 2401
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method private readVideoPreferences()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 789
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 797
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 798
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 799
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 801
    if-lez v0, :cond_5

    move v0, v1

    .line 810
    :cond_0
    :goto_0
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 811
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 813
    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 819
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 820
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v4, :cond_7

    .line 821
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 823
    iget v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 824
    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v5, 0x1e0

    if-le v4, v5, :cond_1

    move v0, v3

    .line 830
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v4, :cond_2

    .line 831
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_video_quality_key"

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    .line 844
    :cond_2
    :goto_2
    const-string v3, "0"

    .line 845
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_speed_key"

    const v6, 0x7f0d00fb

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 848
    const-string v5, "slow"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 850
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    const v5, 0x7f0d0034

    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 854
    const-string v4, "slow"

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    .line 862
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 864
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v0, :cond_9

    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 866
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_4

    .line 867
    add-int/lit16 v3, v3, 0x3e8

    .line 868
    const/16 v0, 0x3e8

    if-lt v3, v0, :cond_3

    const/16 v0, 0x3ef

    if-le v3, v0, :cond_4

    .line 870
    :cond_3
    add-int/lit16 v3, v3, -0x3e8

    .line 871
    const-string v0, "0"

    .line 872
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 873
    const-string v1, "pref_video_speed_key"

    const-string v4, "normal"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 874
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 875
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 876
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d0196

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 878
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 881
    :cond_4
    rem-int/lit16 v0, v3, 0x3e8

    iput v0, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    .line 882
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 883
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 884
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->qcomReadVideoPreferences()V

    .line 885
    return-void

    :cond_5
    move v0, v2

    .line 804
    goto/16 :goto_0

    .line 815
    :cond_6
    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 836
    :cond_7
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 837
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v3, :cond_2

    .line 838
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "pref_video_quality_key"

    aput-object v5, v4, v2

    aput-object v7, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/camera/ModeManager;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 856
    :cond_8
    const-string v5, "fast"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 857
    const/4 v4, 0x6

    if-ne v0, v4, :cond_a

    .line 858
    const/4 v0, 0x5

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_3

    :cond_9
    move v1, v2

    .line 864
    goto :goto_4

    :cond_a
    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_3
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1613
    const-string v0, "videocamera"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1615
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1617
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 1620
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1621
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1602
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1604
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1605
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1606
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1607
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1609
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1610
    return-void
.end method

.method private resetEffect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3274
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    if-eqz v1, :cond_0

    .line 3275
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_effect_key"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3277
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3278
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 3283
    :goto_0
    return v0

    .line 3282
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 3283
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2188
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2189
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2190
    return-void
.end method

.method private resetSettings()V
    .locals 1

    .prologue
    .line 1135
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    .line 1136
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V

    .line 1137
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 7

    .prologue
    .line 926
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v1, v2, v3

    .line 927
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 930
    .local v0, "degrees":I
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 932
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 933
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0

    .line 938
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 940
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_3

    .line 941
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0

    .line 944
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2869
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 2871
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 2872
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 2879
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 2880
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 2881
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 2883
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2884
    return-void
.end method

.method private setCameraParameters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2415
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview dimension in App->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2417
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2420
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    .line 2421
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2424
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video dimension in App->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mShowCameraAppView:Z

    if-eqz v0, :cond_9

    .line 2430
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_8

    const-string v0, "off"

    .line 2437
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2438
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2439
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2449
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0d0079

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2452
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2454
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2463
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2464
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2468
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2469
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_focusmode_key"

    const v3, 0x7f0d017b

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2473
    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2474
    const-string v0, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2475
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2476
    const-string v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    .line 2481
    :goto_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2483
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2487
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2488
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2489
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2497
    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2500
    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    const/16 v2, 0x440

    if-ne v1, v2, :cond_5

    .line 2501
    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    iput v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2502
    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    iput v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2505
    :cond_5
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2506
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2507
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2509
    :cond_6
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2515
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2517
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2520
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->qcomSetCameraParameters()V

    .line 2522
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2525
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0d00e5

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2528
    const-string v1, "videocamera"

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

    .line 2529
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2530
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2533
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2535
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2537
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateCameraScreenNailSize(II)V

    .line 2538
    return-void

    .line 2430
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0d0078

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2435
    :cond_9
    const-string v0, "off"

    goto/16 :goto_0

    .line 2441
    :cond_a
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2442
    if-nez v0, :cond_0

    .line 2443
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 2456
    :cond_b
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2457
    if-nez v0, :cond_1

    .line 2458
    const-string v0, "auto"

    goto/16 :goto_2

    .line 2478
    :cond_c
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2479
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1035
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 1036
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    .line 1037
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerVideo;->setDisplayOrientation(I)V

    .line 1040
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2065
    const/4 v0, 0x0

    .line 2066
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 2067
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2073
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2076
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 2077
    .local v1, "info":[Landroid/hardware/Camera$CameraInfo;
    iget v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v4, v1, v4

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_3

    .line 2078
    .local v2, "mirror":Z
    :goto_1
    iget v4, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v4

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2080
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2081
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2083
    .end local v1    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "mirror":Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2084
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2085
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2087
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2088
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2089
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHDRExitArea:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2090
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2092
    return-void

    .line 2069
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2070
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1    # "info":[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v3

    .line 2077
    goto :goto_1
.end method

.method private showCaptureButton()Z
    .locals 2

    .prologue
    .line 2048
    const-string v0, "fast"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoCaptureEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHDRExit(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3173
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3174
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHDRExitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3175
    return-void

    :cond_0
    move v0, v2

    .line 3173
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3174
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 5

    .prologue
    const v4, 0x7f0c002b

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 2004
    if-eqz p1, :cond_7

    .line 2005
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02013c

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2007
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2008
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 2009
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 2010
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2011
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 2013
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 2015
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2020
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hasFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2022
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2042
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_4

    .line 2043
    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->showHDRExit(Z)V

    .line 2045
    :cond_4
    return-void

    .line 2017
    :cond_5
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    .line 2026
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02003e

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2027
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2028
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 2031
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraPickerButton;->isShow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2032
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 2034
    :cond_9
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2035
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2036
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    :cond_a
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModeChangeManager;->setVisibility(I)V

    .line 2038
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hasFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 2039
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showUserMsg(I)V
    .locals 3

    .prologue
    .line 3321
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 3322
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d011d

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3328
    :cond_0
    :goto_0
    return-void

    .line 3324
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3325
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d011e

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 614
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1043
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1046
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1048
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1053
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1055
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 1058
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1060
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1073
    return-void

    .line 1062
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    .line 1063
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    .line 1064
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsPreview()V

    .line 1065
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1069
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startRecordVideo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1883
    const-string v2, "videocamera"

    const-string v3, "startRecordVideo"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1886
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsRecording()V

    .line 1887
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v2, :cond_2

    .line 1888
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize effect recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :goto_0
    return v0

    .line 1892
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 1893
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    if-ne v2, v1, :cond_1

    .line 1894
    const-string v1, "videocamera"

    const-string v2, "Unsupported Resolution according to target"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1897
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_2

    .line 1898
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1903
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1905
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1907
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 1925
    goto :goto_0

    .line 1908
    :catch_0
    move-exception v1

    .line 1909
    const-string v2, "videocamera"

    const-string v3, "Could not start effects recorder. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1910
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseEffectsRecorder()V

    goto :goto_0

    .line 1915
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1916
    :catch_1
    move-exception v1

    .line 1917
    const-string v2, "videocamera"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1918
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1920
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1948
    const-string v0, "videocamera"

    const-string v3, "startVideoRecording"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 1950
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->enableExitButton(Z)V

    .line 1952
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    if-ne v0, v2, :cond_3

    .line 1953
    const-string v0, "videocamera"

    const-string v3, "Unsupported HFR and video size combinations"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1955
    const-string v0, "Only "

    .line 1956
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v3

    .line 1957
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-gt v2, v4, :cond_1

    .line 1958
    if-eq v2, v4, :cond_0

    .line 1959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1962
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1966
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are supported when HFR is on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1967
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2001
    :cond_2
    :goto_2
    return-void

    .line 1971
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    if-ne v0, v2, :cond_4

    .line 1972
    const-string v0, "videocamera"

    const-string v2, "Unsupported HFR and video codec combinations"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const v0, 0x7f0d0161

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1980
    :cond_4
    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1981
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_3
    iput v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    .line 1982
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startRecordVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1983
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 1984
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 1986
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v5, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1991
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1992
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.start_video_recording"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1993
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1994
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "video_recorded_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1995
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1997
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1999
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 2000
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1981
    goto :goto_3
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1076
    const-string v0, "videocamera"

    const-string v1, "Guru : Stop Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1079
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2113
    const-string v0, "videocamera"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 2115
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->enableExitButton(Z)V

    .line 2117
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 2121
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2126
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2133
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2134
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2135
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 2142
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2153
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2156
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    .line 2157
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    .line 2160
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 2161
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    .line 2162
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2165
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 2166
    if-eqz v0, :cond_3

    .line 2168
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    .line 2169
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    .line 2171
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.stop_video_recording"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2174
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2175
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2177
    :cond_4
    return v1

    .line 2128
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2129
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2130
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 2131
    goto :goto_0

    .line 2137
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 2138
    :goto_4
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2139
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    :cond_6
    move v1, v3

    .line 2140
    goto :goto_1

    :cond_7
    move v4, v2

    .line 2156
    goto :goto_2

    .line 2137
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 3251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3252
    .local v2, "dateTaken":J
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 3253
    .local v1, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 3254
    .local v5, "orientation":I
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 3255
    .local v12, "s":Landroid/hardware/Camera$Size;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->addSecureNum(I)V

    .line 3256
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    iget v8, v12, Landroid/hardware/Camera$Size;->height:I

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v4, p2

    move-object v6, p1

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object v13

    .line 3258
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_1

    .line 3260
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v11, v6

    .line 3262
    .local v11, "ratio":I
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 3263
    .local v10, "inSampleSize":I
    const/4 v0, 0x0

    invoke-static {p1, v5, v10, v13, v0}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 3264
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 3265
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v4}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3267
    :cond_0
    invoke-static {p0, v13}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3271
    .end local v10    # "inSampleSize":I
    .end local v11    # "ratio":I
    :goto_0
    return-void

    .line 3269
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->addSecureNum(I)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2959
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2993
    :goto_0
    return-void

    .line 2961
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_1

    .line 2962
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->exitHDRMode(Z)V

    .line 2964
    :cond_1
    const-string v0, "videocamera"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iget v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 2966
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    .line 2967
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 2968
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->updateFlashButton()V

    .line 2969
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 2970
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHasSwitchedToFront:Z

    if-nez v0, :cond_2

    .line 2971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHasSwitchedToFront:Z

    .line 2972
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetSettings()V

    .line 2974
    :cond_2
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 2975
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 2977
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2982
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2983
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2984
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 2987
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 2988
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    .line 2989
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 2992
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2978
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)Z
    .locals 3

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2639
    :goto_0
    return v0

    .line 2632
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 2633
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mShowWhenLocked:Z

    if-eqz v0, :cond_2

    .line 2634
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2635
    const-string v1, "SecurePictureNum"

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getSecureNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2637
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2638
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 2639
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2541
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2542
    move v0, p1

    .line 2543
    .local v0, "tmp":I
    move p1, p2

    .line 2544
    move p2, v0

    .line 2547
    .end local v0    # "tmp":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2548
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManagerVideo;->setRenderSize(II)V

    .line 2550
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->notifyScreenNailChanged()V

    .line 2552
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 2553
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2554
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2556
    :cond_1
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3003
    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 3004
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 3005
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 3006
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 3008
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 3009
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v4, :cond_1

    .line 3039
    :cond_0
    :goto_0
    return v0

    .line 3010
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3012
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget v3, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v3, :cond_3

    .line 3017
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 3018
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    move v0, v1

    .line 3019
    goto :goto_0

    .line 3021
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3024
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3025
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3027
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3028
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/VideoCamera;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 3029
    goto :goto_0

    .line 3031
    :cond_4
    if-nez v2, :cond_5

    .line 3033
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 3034
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 3039
    goto :goto_0

    .line 3037
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2255
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2301
    :goto_0
    return-void

    .line 2258
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2259
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 2263
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 2267
    :goto_1
    if-eqz v5, :cond_5

    .line 2268
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 2273
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 2274
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2275
    const-wide/16 v0, 0x3e8

    .line 2284
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2286
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 2289
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2291
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f0a0002

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2295
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2298
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 2299
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 2263
    goto :goto_1

    .line 2280
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2281
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 2291
    :cond_4
    const/high16 v4, 0x7f0a0000

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private updateScreenSettingView()V
    .locals 2

    .prologue
    .line 2891
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateVideoSpeedUI()Z

    move-result v0

    .line 2892
    .local v0, "isUpdated":Z
    if-eqz v0, :cond_0

    .line 2893
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 2897
    :goto_0
    return-void

    .line 2895
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateVideoQualityUI()Z

    goto :goto_0
.end method

.method private updateVideoQualityUI()Z
    .locals 3

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_0

    .line 2615
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2617
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_quality_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2620
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2621
    iget v1, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    if-eq v0, v1, :cond_0

    .line 2622
    iput v0, p0, Lcom/android/camera/VideoCamera;->mQuality:I

    .line 2623
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 2624
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v1, "pref_video_quality_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->showPopup(Ljava/lang/String;)V

    .line 2625
    const/4 v0, 0x1

    .line 2628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVideoSpeedUI()Z
    .locals 4

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_2

    .line 2580
    const-string v0, "off"

    .line 2581
    const-string v0, "0"

    .line 2582
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00fb

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2584
    const-string v0, "normal"

    .line 2586
    const-string v2, "fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2587
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_hfr_key"

    const v3, 0x7f0d00f0

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2590
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2591
    const-string v0, "fast"

    .line 2602
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2603
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    .line 2604
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 2605
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v1, "pref_video_speed_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->showPopup(Ljava/lang/String;)V

    .line 2606
    const/4 v0, 0x1

    .line 2609
    :goto_1
    return v0

    .line 2593
    :cond_1
    const-string v2, "slow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    const v3, 0x7f0d0034

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2598
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2599
    const-string v1, "slow"

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Ljava/lang/String;

    goto :goto_0

    .line 2609
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private waitAsyncVideoRecording()V
    .locals 2

    .prologue
    .line 1864
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    if-eqz v1, :cond_0

    .line 1866
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    invoke-virtual {v1}, Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;->join()V

    .line 1867
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :cond_0
    :goto_0
    return-void

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 889
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0d010e

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 891
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 892
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 3149
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 3169
    :goto_0
    return v3

    .line 3152
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3154
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3157
    .local v2, "y":F
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 3158
    .local v0, "popup":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3162
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3164
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v3}, Lcom/android/camera/ModeManager;->dismissSettingPopup()Z

    .line 3169
    .end local v0    # "popup":Landroid/view/View;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected enableCameraControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2182
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->enableCameraControls(Z)V

    .line 2183
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->enableExitButtonIfNeed(Z)V

    .line 2184
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1944
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2652
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 2653
    packed-switch p1, :pswitch_data_0

    .line 2668
    :goto_0
    return-void

    .line 2655
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2658
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2659
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2662
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2663
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2653
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1223
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1224
    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mLastBackPressedTime:J

    .line 1225
    const v0, 0x7f0d018f

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1228
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    goto :goto_0

    .line 1232
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mShowCameraAppView:Z

    if-eqz v0, :cond_4

    .line 1234
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->collapsePopupForSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hideScreenSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_4

    .line 1241
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->exitHDR()V

    goto :goto_0

    .line 1247
    :cond_4
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2

    .prologue
    .line 2946
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2956
    :cond_0
    :goto_0
    return-void

    .line 2948
    :cond_1
    const-string v0, "videocamera"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2952
    iput p1, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    .line 2954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 2955
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hideScreenSettingView()Z

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2724
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 2726
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 2728
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2729
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0d0002

    const v5, 0x7f0d0001

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 434
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 435
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 436
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v6}, Lcom/android/camera/VideoCamera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 437
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ComboPreferences;->setLocalId(I)Lcom/android/camera/ComboPreferences;

    .line 438
    const v6, 0x7f0d010e

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    .line 440
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetSettings()V

    .line 445
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v6

    const-string v7, "open_camera_times_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 447
    .local v0, "cameraOpenThread":Lcom/android/camera/ActivityBase$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 449
    invoke-static {v2}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 450
    const v6, 0x7f04002e

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 451
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 454
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 455
    iget-boolean v6, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v6, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->createCameraScreenNail(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->updateFlashButton()V

    .line 459
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 460
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v2, :cond_2

    .line 461
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 522
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 455
    goto :goto_0

    :cond_1
    move v2, v5

    .line 461
    goto :goto_1

    .line 466
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v2, :cond_3

    .line 467
    const v2, 0x7f0d0003

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 470
    :catch_0
    move-exception v2

    .line 474
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 475
    new-instance v2, Lcom/android/camera/ui/VideoSettingsStatusBar;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/VideoSettingsStatusBar;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    .line 476
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeFocusManager()V

    .line 477
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 478
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->initSettingButton()V

    .line 480
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 487
    .local v1, "startPreviewThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 488
    new-instance v2, Lcom/android/camera/RotateDialogController;

    const v6, 0x7f040028

    invoke-direct {v2, p0, v6}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 490
    new-instance v2, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 491
    const v2, 0x7f0c009a

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ZoomControl;

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 494
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 495
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v2, :cond_6

    .line 496
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    move v2, v4

    :goto_3
    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 505
    :catch_1
    move-exception v2

    .line 509
    :cond_4
    const v2, 0x7f0c001e

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mHDRExitArea:Landroid/view/View;

    .line 510
    const v2, 0x7f0c001f

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mHDRExitButton:Landroid/widget/TextView;

    .line 511
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHDRExitButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    const v2, 0x7f0c0035

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSimpleExitArea:Landroid/view/View;

    .line 518
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSimpleExitButton:Landroid/widget/TextView;

    .line 519
    new-instance v2, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 521
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    goto/16 :goto_2

    :cond_5
    move v2, v5

    .line 496
    goto :goto_3

    .line 501
    :cond_6
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 502
    const v2, 0x7f0d0003

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2735
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    invoke-direct {p0, p2}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2738
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_1

    .line 2739
    const-string v0, "videocamera"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    monitor-exit p0

    return-void

    .line 2742
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2672
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2676
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2677
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    .line 2714
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2715
    const-string v0, "videocamera"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeEffects()V

    .line 2718
    :cond_1
    return-void

    .line 2678
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 2680
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2681
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 2682
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 2683
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 2691
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 2694
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2695
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 2696
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    goto :goto_0

    .line 2685
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 2688
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 2698
    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    .line 2700
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2701
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2702
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2704
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2708
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    .prologue
    .line 1754
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1757
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 1758
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1760
    :cond_0
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3058
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3059
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->openSettingActivity()V

    .line 3094
    :cond_0
    :goto_0
    return-void

    .line 3060
    :cond_1
    const-string v0, "pref_video_hdr_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3061
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->switchHDR()V

    goto :goto_0

    .line 3065
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentSimpleMode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentSimpleMode:Ljava/lang/String;

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3067
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->resetAllStatus()V

    .line 3069
    :cond_5
    iput-object p2, p0, Lcom/android/camera/VideoCamera;->mCurrentSimpleMode:Ljava/lang/String;

    .line 3070
    const-string v0, "pref_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3071
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v1, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    .line 3092
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 3093
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    goto :goto_0

    .line 3076
    :cond_7
    const-string v0, "pref_video_speed_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3077
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00fb

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3079
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3080
    const-string v0, "fast"

    .line 3084
    :goto_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3085
    const-string v2, "pref_video_speed_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3086
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 3088
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    goto :goto_1

    .line 3082
    :cond_8
    const-string v0, "normal"

    goto :goto_2

    .line 3089
    :cond_9
    const-string v0, "pref_video_hdr_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3090
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->switchHDR()V

    goto :goto_1
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .prologue
    .line 1765
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1766
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1783
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1768
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo reached max file size mCurrentFileNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1770
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCurrentFileNumber:I

    if-ge v0, v1, :cond_2

    .line 1771
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onRestartVideoRecording()V

    goto :goto_0

    .line 1773
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1775
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    const v0, 0x7f0d00ef

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1268
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1291
    :goto_0
    return v1

    .line 1272
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1291
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1274
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1280
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1284
    :sswitch_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/VideoCamera;->handleVolumeKeyEvent(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1272
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1309
    packed-switch p1, :pswitch_data_0

    .line 1314
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1311
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1312
    const/4 v0, 0x1

    goto :goto_0

    .line 1309
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2643
    if-eq p1, v0, :cond_0

    .line 2644
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)Z

    .line 2647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3000
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 680
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 652
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 646
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    .line 641
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 635
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 636
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2902
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2942
    :goto_0
    return-void

    .line 2903
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2906
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2940
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2908
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2909
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2912
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2914
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateScreenSettingView()V

    .line 2915
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2917
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2918
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    if-eqz v2, :cond_5

    .line 2920
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2921
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 2925
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2926
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2940
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2941
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0

    .line 2923
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_1

    .line 2927
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    if-eqz v2, :cond_7

    .line 2929
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2930
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2934
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2935
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 2936
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    goto :goto_2

    .line 2932
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_3

    .line 2938
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 687
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hideScreenSettingView()Z

    .line 691
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 693
    .local v0, "stop":Z
    if-eqz v0, :cond_4

    .line 694
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->playCameraSound(I)V

    .line 695
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 700
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 705
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 706
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 697
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->playCameraSound(I)V

    .line 698
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0
    .param p1, "pressed"    # Z
    .param p2, "fromWhat"    # I

    .prologue
    .line 718
    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 3193
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3194
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0d011c

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3211
    :cond_0
    :goto_0
    return-void

    .line 3198
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3203
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/FocusManagerVideo;->getFocusArea(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3205
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/FocusManagerVideo;->getFocusArea(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 3206
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3207
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerVideo;->getAutoFocusCallback()Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusManager:Lcom/android/camera/FocusManagerVideo;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManagerVideo;->setPreviewSize(II)V

    .line 2575
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hideScreenSettingView()Z

    .line 626
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    .line 630
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1211
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1212
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1213
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 3110
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->hideScreenSettingView()Z

    .line 3111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3112
    const-class v1, Lcom/android/camera/VideoCameraPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3113
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 3114
    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSettingActivityShow:Z

    .line 3116
    invoke-static {v1}, Lcom/android/camera/VideoCameraPreferenceActivity;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3117
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    .line 3118
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1142
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFromStop:Z

    if-nez v0, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSettingActivityShow:Z

    if-nez v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1148
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetSettings()V

    .line 1150
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeSettingScreen()V

    .line 1161
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1163
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1169
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1170
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1171
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1173
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1177
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1190
    :goto_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1192
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1194
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 1195
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    .line 1197
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1199
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1206
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    goto :goto_0

    .line 1153
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0086

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/android/camera/CameraSettings;->resetSpecificSettings(Lcom/android/camera/ComboPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    goto :goto_1

    .line 1165
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1166
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1167
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto :goto_2

    .line 1186
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1187
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    goto :goto_3
.end method

.method protected performShutterClick()V
    .locals 0

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onShutterButtonClick()V

    .line 1297
    return-void
.end method

.method protected resetAllStatus()V
    .locals 3

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d0086

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3124
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3125
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3126
    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3128
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 3132
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_speed_key"

    const v2, 0x7f0d00fb

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3134
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3135
    const-string v0, "normal"

    .line 3136
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3137
    const-string v2, "pref_video_speed_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3139
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 3141
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    if-eqz v0, :cond_2

    .line 3142
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 3143
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->exitHDR()V

    .line 3145
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 961
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 963
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 965
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 966
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 971
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_5

    .line 972
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 976
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 977
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 979
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 980
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v0, :cond_9

    .line 981
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    const v0, 0x7f0d0002

    :goto_1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 993
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-eqz v0, :cond_4

    .line 994
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    invoke-virtual {v0}, Lcom/android/camera/ModeManager;->reloadPreferences()V

    .line 996
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 997
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 998
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 1002
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 1004
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1007
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1009
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1010
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1011
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1014
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1015
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1017
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_6

    .line 1018
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLastThumbnail()V

    .line 1021
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onSettingsBack()V

    .line 1023
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_7

    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 1025
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1028
    :cond_7
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1030
    new-instance v0, Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$VideoNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 1031
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mHDRStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 981
    :cond_8
    const v0, 0x7f0d0001

    goto/16 :goto_1

    .line 986
    :cond_9
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 987
    const v0, 0x7f0d0003

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected sendFadeoutZoomMsg()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1301
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1305
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 583
    const/16 v5, 0x11

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModeChangeManager;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v6, 0x5

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mModeManager:Lcom/android/camera/ModeManager;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    aput-object v5, v3, v6

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    aput-object v6, v3, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    aput-object v6, v3, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/16 v6, 0xe

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0xf

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mHDRExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    const/16 v6, 0x10

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mSimpleExitArea:Landroid/view/View;

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v6

    .line 588
    .local v3, "indicators":[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, "arr$":[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 589
    .local v2, "indicator":Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 588
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v0    # "arr$":[Lcom/android/camera/ui/Rotatable;
    .end local v1    # "i$":I
    .end local v2    # "indicator":Lcom/android/camera/ui/Rotatable;
    .end local v3    # "indicators":[Lcom/android/camera/ui/Rotatable;
    .end local v4    # "len$":I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mSettingView:Lcom/android/camera/ui/SettingView;

    goto :goto_0

    .line 592
    .restart local v0    # "arr$":[Lcom/android/camera/ui/Rotatable;
    .restart local v1    # "i$":I
    .restart local v3    # "indicators":[Lcom/android/camera/ui/Rotatable;
    .restart local v4    # "len$":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setOrientationIndicator(IZ)V

    .line 611
    return-void
.end method

.method protected shouldIgnoreZoomChange()Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRestartVideoRecordingThread:Lcom/android/camera/VideoCamera$RestartVideoRecordingThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3184
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3185
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 3186
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3188
    :cond_0
    return-void

    .line 3186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 951
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->stop()V

    .line 952
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFromStop:Z

    .line 954
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->pause()V

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsFromStop:Z

    .line 957
    :cond_0
    return-void
.end method

.method protected switchHDR()V
    .locals 1

    .prologue
    .line 3097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 3098
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->switchHDR()V

    .line 3099
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3216
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 3218
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3232
    :cond_0
    :goto_0
    return-void

    .line 3221
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 3222
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3223
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    goto :goto_0

    .line 3226
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3227
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 3228
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 3229
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 3230
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method
