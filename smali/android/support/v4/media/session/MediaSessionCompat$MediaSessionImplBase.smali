.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private final mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

.field private mIsActive:Z

.field private mIsMbrRegistered:Z

.field private mIsRccRegistered:Z

.field private mLocalStream:I

.field private final mLock:Ljava/lang/Object;

.field private final mMediaButtonEventReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private final mPackageName:Ljava/lang/String;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mRccObj:Ljava/lang/Object;

.field private mSessionActivity:Landroid/app/PendingIntent;

.field private mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private final mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

.field private mVolumeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .line 976
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 979
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    .line 980
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 981
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    .line 982
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 999
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 1015
    if-eqz p3, :cond_0

    .line 1019
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1020
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    .line 1021
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 1022
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    .line 1023
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 1024
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    .line 1025
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    .line 1026
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1027
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    .line 1029
    iput v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    .line 1030
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1031
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 1032
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1035
    iput-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    .line 1037
    :goto_0
    return-void

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MediaButtonReceiver component may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_1
    invoke-static {p4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    return v0
.end method

.method static synthetic access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
    .param p1, "x1"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 963
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    return v0
.end method

.method private adjustVolume(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1371
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1376
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    goto :goto_0
.end method

.method private getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 22

    .prologue
    .line 1392
    const-wide/16 v12, -0x1

    .line 1393
    .local v12, "duration":J
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .local v9, "-l_4_R":Ljava/lang/Object;
    monitor-enter v9

    .line 1394
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1395
    .local v14, "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    if-nez v3, :cond_2

    .line 1399
    :cond_0
    :goto_0
    monitor-exit v9

    .line 1401
    const/4 v11, 0x0

    .line 1402
    .local v11, "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    if-nez v14, :cond_3

    .line 1424
    .end local v11    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_1
    :goto_1
    if-eqz v11, :cond_c

    :goto_2
    return-object v11

    .line 1395
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string/jumbo v6, "android.media.metadata.DURATION"

    invoke-virtual {v3, v6}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string/jumbo v6, "android.media.metadata.DURATION"

    invoke-virtual {v3, v6}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_0

    .line 1399
    .end local v14    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :catchall_0
    move-exception v10

    .local v10, "-l_5_R":Ljava/lang/Object;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1403
    .end local v10    # "-l_5_R":Ljava/lang/Object;
    .restart local v11    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .restart local v14    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_3
    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 1406
    :cond_4
    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v16

    .line 1407
    .local v16, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1408
    .local v7, "currentTime":J
    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-gtz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_1

    .line 1409
    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v3

    sub-long v18, v7, v16

    move-wide/from16 v0, v18

    long-to-float v6, v0

    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v20

    add-long v4, v18, v20

    .line 1411
    .local v4, "position":J
    const-wide/16 v18, 0x0

    cmp-long v3, v12, v18

    if-gez v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_a

    cmp-long v3, v4, v12

    if-gtz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_a

    .line 1412
    move-wide v4, v12

    .line 1416
    :cond_5
    :goto_6
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v2, v14}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1418
    .local v2, "builder":Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1420
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v11

    goto :goto_1

    .line 1403
    .end local v2    # "builder":Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v16    # "updateTime":J
    :cond_6
    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_4

    goto :goto_1

    .line 1408
    .restart local v7    # "currentTime":J
    .restart local v16    # "updateTime":J
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 1411
    .restart local v4    # "position":J
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 1413
    :cond_a
    const-wide/16 v18, 0x0

    cmp-long v3, v4, v18

    if-ltz v3, :cond_b

    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_5

    .line 1414
    const-wide/16 v4, 0x0

    goto :goto_6

    .line 1413
    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v11    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v16    # "updateTime":J
    :cond_c
    move-object v11, v14

    .line 1424
    goto/16 :goto_2
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1453
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1454
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1461
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1462
    return-void

    .line 1455
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1457
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    .line 1477
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1478
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1485
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1486
    return-void

    .line 1479
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1481
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendQueue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1490
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1497
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1498
    return-void

    .line 1491
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1493
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendQueueTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "queueTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1501
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1502
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1509
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1510
    return-void

    .line 1503
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1505
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1506
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendSessionDestroyed()V
    .locals 4

    .prologue
    .line 1440
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1441
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1448
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1449
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1450
    return-void

    .line 1442
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1444
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1445
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 4
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    .line 1465
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1466
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1473
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1474
    return-void

    .line 1467
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1469
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1470
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .prologue
    .line 1428
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1429
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 1436
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1437
    return-void

    .line 1430
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1432
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private setVolumeTo(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1381
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1386
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    goto :goto_0
.end method

.method private update()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x12

    const/4 v3, 0x0

    .line 1304
    const/4 v0, 0x0

    .line 1305
    .local v0, "registeredRcc":Z
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v1, :cond_1

    .line 1348
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-nez v1, :cond_a

    .line 1358
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-nez v1, :cond_c

    .line 1367
    :cond_0
    :goto_1
    return v0

    .line 1308
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    .line 1331
    :cond_2
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1332
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v1, :cond_9

    .line 1336
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1341
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1342
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1343
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    goto :goto_1

    .line 1309
    :cond_4
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v1, :cond_6

    .line 1318
    :cond_5
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 1319
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_8

    .line 1323
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1326
    :goto_3
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    goto :goto_2

    .line 1309
    :cond_6
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 1310
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_7

    .line 1314
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1317
    :goto_4
    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    goto :goto_2

    .line 1311
    :cond_7
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 1320
    :cond_8
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 1332
    :cond_9
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1333
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1334
    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    .line 1335
    const/4 v0, 0x1

    goto :goto_1

    .line 1349
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_b

    .line 1353
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1356
    :goto_5
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    goto/16 :goto_0

    .line 1350
    :cond_b
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    goto :goto_5

    .line 1362
    :cond_c
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1363
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1364
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    goto/16 :goto_1
.end method


# virtual methods
.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    .line 1194
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    .line 1195
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendSessionDestroyed()V

    .line 1196
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1187
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1188
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 1170
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-eq p1, v0, :cond_0

    .line 1173
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1174
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    :goto_0
    return-void

    .line 1171
    :cond_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1176
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v6, 0x13

    const/16 v5, 0x12

    const/4 v4, 0x0

    .line 1041
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    if-eq p1, v3, :cond_2

    .line 1044
    if-nez p1, :cond_3

    .line 1047
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_4

    .line 1050
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_5

    .line 1126
    :cond_1
    :goto_1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 1127
    return-void

    .line 1042
    :cond_2
    return-void

    .line 1044
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_0

    .line 1054
    if-eqz p2, :cond_6

    .line 1057
    :goto_2
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 1113
    .local v0, "cb14":Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_7

    .line 1119
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1

    .line 1120
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    move-result-object v1

    .line 1122
    .local v1, "onMetadataUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1048
    .end local v0    # "cb14":Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    .end local v1    # "onMetadataUpdateObj":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1051
    :cond_5
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1055
    :cond_6
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .restart local p2    # "handler":Landroid/os/Handler;
    goto :goto_2

    .line 1114
    .restart local v0    # "cb14":Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    :cond_7
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    move-result-object v2

    .line 1116
    .local v2, "onPositionUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1299
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    .line 1300
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 1132
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    .line 1133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    .line 1135
    return-void

    .line 1133
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 1268
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 6
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    const/4 v2, 0x0

    .line 1240
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 1241
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1244
    iget-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-eqz v3, :cond_0

    .line 1248
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 1252
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_4

    .line 1256
    :goto_0
    return-void

    .line 1242
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1246
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1249
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    :cond_2
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    :goto_1
    invoke-static {v3, v2, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 1253
    :cond_4
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    :cond_5
    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 11
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    const/16 v10, 0x12

    const/4 v1, 0x0

    const/16 v9, 0xe

    .line 1205
    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .local v7, "-l_2_R":Ljava/lang/Object;
    monitor-enter v7

    .line 1206
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1207
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1209
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-eqz v0, :cond_1

    .line 1213
    if-eqz p1, :cond_2

    .line 1220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_3

    .line 1223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v9, :cond_4

    .line 1228
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_5

    .line 1230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_6

    .line 1232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v9, :cond_7

    .line 1236
    :cond_0
    :goto_1
    return-void

    .line 1207
    :catchall_0
    move-exception v8

    .local v8, "-l_3_R":Ljava/lang/Object;
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1211
    .end local v8    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    return-void

    .line 1214
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_0

    .line 1215
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1216
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1221
    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V

    goto :goto_0

    .line 1224
    :cond_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1229
    :cond_5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1231
    :cond_6
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1233
    :cond_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method public setPlaybackToLocal(I)V
    .locals 6
    .param p1, "stream"    # I

    .prologue
    const/4 v2, 0x0

    .line 1139
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-nez v1, :cond_0

    .line 1142
    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1143
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1147
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1148
    return-void

    .line 1140
    .end local v0    # "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    goto :goto_0
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6
    .param p1, "volumeProvider"    # Landroid/support/v4/media/VolumeProviderCompat;

    .prologue
    const/4 v2, 0x0

    .line 1152
    if-eqz p1, :cond_0

    .line 1155
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-nez v1, :cond_1

    .line 1158
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1159
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    .line 1160
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1163
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1165
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {p1, v1}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1166
    return-void

    .line 1153
    .end local v0    # "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "volumeProvider may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1156
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    goto :goto_0
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    .line 1273
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueue(Ljava/util/List;)V

    .line 1274
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1278
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    .line 1279
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueueTitle(Ljava/lang/CharSequence;)V

    .line 1280
    return-void
.end method

.method public setRatingType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1294
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    .line 1295
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 1261
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 1262
    monitor-exit v0

    .line 1263
    return-void

    .line 1262
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
