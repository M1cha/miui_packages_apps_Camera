.class Lcom/android/camera/VideoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    .line 550
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 551
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x7

    .line 558
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 561
    .local v0, newOrientation:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mOrientation:I

    if-eq v2, v0, :cond_2

    .line 562
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iput v0, v2, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 568
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->effectsActive()Z
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1400(Lcom/android/camera/VideoCamera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v3, v3, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 575
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 578
    .local v1, orientationCompensation:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v2, v2, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    if-eq v2, v1, :cond_3

    .line 579
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iput v1, v2, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 580
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v3, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v3, v3, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 584
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$100(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$100(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$800(Lcom/android/camera/VideoCamera;)V

    goto :goto_0
.end method
