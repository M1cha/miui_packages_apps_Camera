.class public abstract Lcom/android/camera/FocusManagerAbstract;
.super Ljava/lang/Object;
.source "FocusManagerAbstract.java"


# instance fields
.field protected final FOCUS_AREA_HEIGHT:I

.field protected final FOCUS_AREA_SCALE:F

.field protected final FOCUS_AREA_WIDTH:I

.field protected final METERING_AREA_SCALE:F

.field protected mCancelAutoFocusIfMove:Z

.field protected mDisplayOrientation:I

.field protected mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialized:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mMirror:Z

.field protected mPreviewChangeMatrix:Landroid/graphics/Matrix;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mRenderHeight:I

.field protected mRenderWidth:I

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    iput v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_SCALE:F

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->METERING_AREA_SCALE:F

    return-void
.end method


# virtual methods
.method protected calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10

    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    sub-int v7, p6, v2

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    sub-int v7, p7, v1

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    return-void
.end method

.method protected setMatrix()V
    .locals 8

    const v7, 0x3f19999a    # 0.6f

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    return-void
.end method

.method public setRenderSize(II)V
    .locals 1

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    :cond_1
    return-void
.end method
