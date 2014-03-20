.class Lcom/android/camera/ActivityBase$ZoomChangeListener;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$ZoomChangeListener;-><init>(Lcom/android/camera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->shouldIgnoreZoomChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mHDRExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1179
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mSimpleExitArea:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1180
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1181
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1182
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->sendFadeoutZoomMsg()V

    .line 1186
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iput p1, v0, Lcom/android/camera/ActivityBase;->mZoomValue:I

    .line 1187
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget v1, v1, Lcom/android/camera/ActivityBase;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ActivityBase$ZoomChangeListener;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
