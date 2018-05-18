.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawJPEGAttribute.java"


# instance fields
.field public mAlgorithmName:Ljava/lang/String;

.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mData:[B

.field public mDate:J

.field public mEffectIndex:I

.field public mExif:Lcom/android/gallery3d/exif/ExifInterface;

.field public mFinalImage:Z

.field public mHeight:I

.field public mInfo:Lcom/android/camera/PictureInfo;

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mShootRotation:F

.field public mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public constructor <init>([BIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iput-wide p10, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    iput-object p7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput-object p8, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iput-object p9, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iput p12, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    iput p13, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move/from16 v0, p14

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTarget:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->finalize()V

    return-void
.end method
