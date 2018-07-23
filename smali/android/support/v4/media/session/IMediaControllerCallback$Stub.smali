.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-eqz p0, :cond_1

    .line 31
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 35
    :cond_0
    new-instance v1, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 29
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 47
    :sswitch_0
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v9

    .line 52
    :sswitch_1
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_0

    .line 60
    const/4 v7, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0, v5, v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    return v9

    .line 57
    :cond_0
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 67
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 69
    return v9

    .line 73
    :sswitch_3
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_1

    .line 79
    const/4 v3, 0x0

    .line 81
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 82
    return v9

    .line 76
    :cond_1
    sget-object v8, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    .local v3, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_1

    .line 86
    .end local v3    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_4
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_2

    .line 92
    const/4 v1, 0x0

    .line 94
    :goto_2
    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 95
    return v9

    .line 89
    :cond_2
    sget-object v8, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    .local v1, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_2

    .line 99
    .end local v1    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_5
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 102
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v6}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 103
    return v9

    .line 107
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_6
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_3

    .line 113
    const/4 v4, 0x0

    .line 115
    :goto_3
    invoke-virtual {p0, v4}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 116
    return v9

    .line 110
    :cond_3
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    .line 120
    .end local v4    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_7
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_4

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 129
    return v9

    .line 123
    :cond_4
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 133
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_5

    .line 139
    const/4 v2, 0x0

    .line 141
    :goto_5
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 142
    return v9

    .line 136
    :cond_5
    sget-object v8, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .local v2, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_5

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
