.class public Lcom/android/camera/module/impl/component/BeautyRecordingImpl;
.super Ljava/lang/Object;
.source "BeautyRecordingImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# instance fields
.field private recordingArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->recordingArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public static create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xad

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->recordingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xad

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
