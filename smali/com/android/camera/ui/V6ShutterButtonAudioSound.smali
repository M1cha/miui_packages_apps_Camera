.class public Lcom/android/camera/ui/V6ShutterButtonAudioSound;
.super Landroid/widget/ImageView;
.source "V6ShutterButtonAudioSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;
    }
.end annotation


# static fields
.field private static final LINE_WIDTH:I


# instance fields
.field private mAlpha:I

.field private mCurrentRadius:I

.field private mDelta:I

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mStartRadius:I

.field private mStartTime:J


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartRadius:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mCurrentRadius:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6ShutterButtonAudioSound;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->LINE_WIDTH:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    new-instance v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;-><init>(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/16 v2, 0xff

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mCurrentRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    return-void
.end method

.method public setRadius(II)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMinRadius:I

    int-to-float v0, p2

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMinRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mDelta:I

    return-void
.end method
