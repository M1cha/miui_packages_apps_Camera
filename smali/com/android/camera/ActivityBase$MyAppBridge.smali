.class Lcom/android/camera/ActivityBase$MyAppBridge;
.super Lcom/android/gallery3d/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mServer:Lcom/android/gallery3d/app/AppBridge$Server;

.field private mZoomScaled:F

.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AppBridge;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ActivityBase$MyAppBridge;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ActivityBase$MyAppBridge;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ActivityBase$MyAppBridge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V

    return-void
.end method

.method private notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 1138
    :cond_0
    return-void
.end method

.method private setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 1126
    :cond_0
    return-void
.end method

.method private setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 1134
    :cond_0
    return-void
.end method

.method private switchWithCaptureAnimation(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->switchWithCaptureAnimation(I)Z

    .line 1130
    :cond_0
    return-void
.end method


# virtual methods
.method public attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$Listener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public createCameraScreenNail()Z
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->recreateCameraScreenNail()Z

    move-result v0

    return v0
.end method

.method public detachScreenNail()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 1058
    return-void
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    return v0
.end method

.method public getSecureSize()I
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->getSecureSize()I

    move-result v0

    .line 1149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isPanoramaActivity()Z

    move-result v0

    return v0
.end method

.method public onDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->tryRemoveCountDownMessage()V

    .line 1170
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    #calls: Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase;->access$800(Lcom/android/camera/ActivityBase;Z)V

    .line 1102
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1155
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onPreviewTextureCopied()V

    .line 1112
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v0, :cond_0

    .line 1085
    iget v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mZoomScaled:F

    const/high16 v1, 0x3f80

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mZoomScaled:F

    .line 1086
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mZoomScaled:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->scaleZoomIndex(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mZoomScaled:F

    .line 1090
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 1078
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mZoomScaled:F

    .line 1079
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 1107
    return-void
.end method

.method public setSecure(Z)V
    .locals 1
    .parameter "isSecure"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSecure(Z)V

    .line 1142
    :cond_0
    return-void
.end method

.method public setSecureSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSecureSize(I)V

    .line 1145
    :cond_0
    return-void
.end method

.method public setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    .line 1117
    return-void
.end method

.method public switchModeLayout()V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->switchModeLayout()V

    .line 1165
    return-void
.end method
