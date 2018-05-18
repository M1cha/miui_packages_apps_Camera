.class public Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawBasicTexAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mHeight:I

.field public mIsSnapshot:Z

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mTarget:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-void
.end method


# virtual methods
.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 1

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mTarget:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 1

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mTarget:I

    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method
