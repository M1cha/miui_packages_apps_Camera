.class public Lcom/android/camera/effect/renders/SnapshotEffectRender;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$TextWaterMark;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mDualCameraWaterMark:Landroid/graphics/Bitmap;

.field private mDualCameraWaterMarkPaddingXRatio:F

.field private mDualCameraWaterMarkPaddingYRatio:F

.field private mDualCameraWaterMarkSizeRatio:F

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mExifNeeded:Z

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIsImageCaptureIntent:Z

.field private volatile mJpegQueueSize:I

.field private final mLock:Ljava/lang/Object;

.field private mNewStyleTimeWaterMarkPaddingXRatio:F

.field private mNewStyleTimeWaterMarkPaddingYRatio:F

.field private mQuality:I

.field private mRelease:Z

.field private mReleasePending:Z

.field private mTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingXRatio:F

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingYRatio:F

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingXRatio:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingYRatio:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkSizeRatio:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/ActivityBase;)Lcom/android/camera/ActivityBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/16 v1, 0x55

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iput-boolean p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SnapshotEffectProcessor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendMessageSync(I)V

    iput-boolean v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getDualCameraWaterMarkFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMark:Landroid/graphics/Bitmap;

    :cond_0
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkSizeRatio:F

    const v1, 0x7f0900e6

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingXRatio:F

    const v1, 0x7f0900e7

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingYRatio:F

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedNewStyleTimeWaterMark()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0900e8

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingXRatio:F

    const v1, 0x7f0900e9

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mNewStyleTimeWaterMarkPaddingYRatio:F

    :cond_2
    return-void
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    sget-object v2, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v10, v5, v4

    if-gtz v10, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v8, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private static final getDualCameraWaterMarkFilePath()Ljava/lang/String;
    .locals 2

    sget-boolean v1, Lcom/android/camera/Device;->IS_E7S:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.boot.hwc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/system/etc/dualcamera_in.png"

    return-object v1

    :cond_0
    const-string/jumbo v1, "/system/etc/dualcamera.png"

    return-object v1
.end method

.method private static final getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;
    .locals 2

    sget-boolean v1, Lcom/android/camera/Device;->IS_E7S:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.boot.hwc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/vendor/etc/camera/dualcamera_in.png"

    return-object v1

    :cond_0
    const-string/jumbo v1, "/vendor/etc/camera/dualcamera.png"

    return-object v1
.end method

.method private getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 4

    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    invoke-virtual {v2}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResourceFloat(IF)F
    .locals 5

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public prepareEffectRender(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v3, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queueSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    sget-object v3, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queueSize is full, drop it "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iput-boolean v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-static {v3, v0, v4, v6}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v4}, Lcom/android/camera/Util;->enableFakeThumbnail(Lcom/android/camera/ActivityBase;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v7, v4}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {v3, v7, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return v7

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setQuality(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x55

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    :cond_0
    return-void
.end method
