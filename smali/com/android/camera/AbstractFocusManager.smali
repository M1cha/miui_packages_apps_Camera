.class abstract Lcom/android/camera/AbstractFocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# instance fields
.field protected final FOCUS_AREA_HEIGHT:I

.field protected final FOCUS_AREA_WIDTH:I

.field protected final FOCUS_INDICATOR_HEIGHT:I

.field protected final FOCUS_INDICATOR_WIDTH:I

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

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mRenderHeight:I

.field protected mRenderWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AbstractFocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    .line 77
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_WIDTH:I

    .line 79
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_HEIGHT:I

    .line 81
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_WIDTH:I

    .line 83
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_INDICATOR_HEIGHT:I

    return-void
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "focusWidth"    # I
    .param p2, "focusHeight"    # I
    .param p3, "areaMultiple"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "previewWidth"    # I
    .param p7, "previewHeight"    # I
    .param p8, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 109
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 110
    .local v2, "areaWidth":I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 111
    .local v1, "areaHeight":I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 112
    .local v3, "left":I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 114
    .local v5, "top":I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    .local v4, "rectF":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/AbstractFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 116
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 117
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/camera/AbstractFocusManager;->mDisplayOrientation:I

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/AbstractFocusManager;->setMatrix()V

    .line 127
    return-void
.end method

.method protected setMatrix()V
    .locals 7

    .prologue
    .line 87
    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/AbstractFocusManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/AbstractFocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/AbstractFocusManager;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/AbstractFocusManager;->mRenderHeight:I

    iget v5, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 94
    iget-object v1, p0, Lcom/android/camera/AbstractFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    .line 97
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/AbstractFocusManager;->mMirror:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/AbstractFocusManager;->setMatrix()V

    .line 122
    return-void
.end method

.method protected setRenderSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->mRenderWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->mRenderHeight:I

    if-eq p2, v0, :cond_1

    .line 101
    :cond_0
    iput p1, p0, Lcom/android/camera/AbstractFocusManager;->mRenderWidth:I

    .line 102
    iput p2, p0, Lcom/android/camera/AbstractFocusManager;->mRenderHeight:I

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/AbstractFocusManager;->setMatrix()V

    .line 105
    :cond_1
    return-void
.end method
