.class public Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;
.super Ljava/lang/Object;
.source "CompatibilityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocGraphicBuffers()V
    .locals 0

    invoke-static {}, Lcom/android/camera/lib/compatibility/related/v26/V26Utils;->allocGraphicBuffers()V

    return-void
.end method

.method public static getSdcardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v23/V23Utils;->getSdcardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isInVideoCall(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v23/V23Utils;->isInVideoCall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method public static resumeMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->resumeMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method public static setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/lib/compatibility/related/v21/V21Utils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static setTextPaintLetterSpacing(Landroid/text/TextPaint;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v21/V21Utils;->setTextPaintLetterSpacing(Landroid/text/TextPaint;F)V

    return-void
.end method
