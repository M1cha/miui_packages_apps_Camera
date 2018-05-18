.class Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;
.super Ljava/lang/Object;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6CameraGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEGLConfigChooser"
.end annotation


# instance fields
.field private final ATTR_ID:[I

.field private final ATTR_NAME:[Ljava/lang/String;

.field private final mConfigSpec:[I

.field final synthetic this$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V
    .locals 8

    const/4 v3, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x5

    const/16 v1, 0x8

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->this$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v4, v0, [I

    const/16 v0, 0x3024

    aput v0, v4, v6

    invoke-static {}, Lcom/android/camera/Device;->isRGB888EGLPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v5, 0x1

    aput v0, v4, v5

    const/16 v0, 0x3023

    const/4 v5, 0x2

    aput v0, v4, v5

    invoke-static {}, Lcom/android/camera/Device;->isRGB888EGLPreferred()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const/4 v5, 0x3

    aput v0, v4, v5

    const/16 v0, 0x3022

    aput v0, v4, v7

    invoke-static {}, Lcom/android/camera/Device;->isRGB888EGLPreferred()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    aput v0, v4, v2

    const/16 v0, 0x3021

    aput v0, v4, v3

    const/4 v0, 0x7

    aput v6, v4, v0

    const/16 v0, 0x3040

    aput v0, v4, v1

    const/16 v0, 0x9

    aput v7, v4, v0

    const/16 v0, 0x3038

    const/16 v5, 0xa

    aput v0, v4, v5

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->mConfigSpec:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_ID:[I

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "R"

    aput-object v1, v0, v6

    const-string/jumbo v1, "G"

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string/jumbo v1, "B"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string/jumbo v1, "A"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string/jumbo v1, "D"

    aput-object v1, v0, v7

    const-string/jumbo v1, "S"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ID"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CAVEAT"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :array_0
    .array-data 4
        0x3024
        0x3023
        0x3022
        0x3021
        0x3025
        0x3026
        0x3028
        0x3027
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V

    return-void
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/16 v8, 0x3026

    const/4 v7, 0x0

    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v0, 0x0

    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v5, p3, v0

    const/16 v6, 0x3024

    invoke-interface {p1, p2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    aget v5, v4, v7

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, p3, v0

    invoke-interface {p1, p2, v5, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    aget v5, v4, v7

    if-eqz v5, :cond_0

    aget v5, v4, v7

    if-ge v5, v1, :cond_0

    aget v1, v4, v7

    aget-object v3, p3, v0

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "eglGetConfigAttrib error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    if-nez v3, :cond_4

    aget-object v3, p3, v7

    :cond_4
    invoke-interface {p1, p2, v3, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-object v3
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/4 v3, 0x1

    new-array v2, v3, [I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_ID:[I

    aget v3, v3, v0

    invoke-interface {p1, p2, p3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "GLRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Config chosen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v0, v5, v4

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->mConfigSpec:[I

    array-length v4, v3

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
