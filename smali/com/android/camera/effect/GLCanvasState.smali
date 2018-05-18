.class public Lcom/android/camera/effect/GLCanvasState;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mBlendAlpha:F

.field private mCanvasStateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentityMatrix:[F

.field private mMVPMatrix:[F

.field private mModelMatrix:[F

.field private mProjectionMatrix:[F

.field private mTexMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mIdentityMatrix:[F

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return v0
.end method

.method public getBlendAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return v0
.end method

.method public getFinalMatrix()[F
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    return-object v0
.end method

.method public getModelMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    return-object v0
.end method

.method public getTexMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    return-object v0
.end method

.method public identityAllM()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityTexM()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public ortho(FFFF)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public popState()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getModelMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getTexMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getBlendAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return-void
.end method

.method public pushState()V
    .locals 7

    iget-object v6, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    new-instance v0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    iget-object v3, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    iget v4, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    iget v5, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;-><init>(Lcom/android/camera/effect/GLCanvasState;[F[FFF)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rotate(FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public scale(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    iput p1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return-void
.end method

.method public setTexMatrix(FFFF)V
    .locals 4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    sub-float v1, p3, p1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    sub-float v1, p4, p2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    return-void
.end method

.method public translate(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
