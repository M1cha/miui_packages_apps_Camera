.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final LOGV:Z

.field private mDisplayOrientation:I

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mIsBigFace:Z

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Landroid/hardware/Camera$Face;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPause:Z

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/hardware/Camera$Face;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method private updateLatestFaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 81
    iput v4, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 98
    :goto_1
    return-void

    .line 83
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v0, v2, v4

    .line 90
    .local v0, face:Landroid/hardware/Camera$Face;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v0, v2, v1

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreivousFaces()V

    .line 220
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 221
    return-void
.end method

.method public clearPreivousFaces()V
    .locals 3

    .prologue
    .line 229
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public faceExisted()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 177
    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-gez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 181
    .local v1, preIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 182
    if-gez v1, :cond_2

    .line 183
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    array-length v3, v3

    add-int/2addr v1, v3

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 186
    const/4 v2, 0x1

    goto :goto_0

    .line 188
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusFaceRect()Landroid/graphics/RectF;
    .locals 9

    .prologue
    .line 101
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 102
    .local v7, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    .line 103
    .local v8, screenNail:Lcom/android/camera/CameraScreenNail;
    if-eqz v8, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 112
    :cond_0
    return-object v7
.end method

.method public isFaceBigEnough()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsBigFace:Z

    return v0
.end method

.method public isFaceStable()Z
    .locals 13

    .prologue
    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, emptyFacesCount:I
    const/4 v4, 0x0

    .local v4, averageWidth:I
    const/4 v1, 0x0

    .local v1, averageHeight:I
    const/4 v2, 0x0

    .local v2, averageLeft:I
    const/4 v3, 0x0

    .local v3, averageTop:I
    const/4 v7, 0x0

    .line 118
    .local v7, faceCount:I
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    .local v0, arr$:[Landroid/hardware/Camera$Face;
    array-length v10, v0

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v6, v0, v9

    .line 120
    .local v6, face:Landroid/hardware/Camera$Face;
    if-nez v6, :cond_0

    .line 121
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x3

    if-lt v5, v11, :cond_1

    .line 122
    const/4 v11, 0x0

    .line 152
    .end local v6           #face:Landroid/hardware/Camera$Face;
    :goto_1
    return v11

    .line 127
    .restart local v6       #face:Landroid/hardware/Camera$Face;
    :cond_0
    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 128
    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v1, v11

    .line 129
    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v11

    .line 130
    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    .line 118
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 132
    .end local v6           #face:Landroid/hardware/Camera$Face;
    :cond_2
    iget-object v11, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    array-length v11, v11

    sub-int v7, v11, v5

    .line 133
    div-int/2addr v4, v7

    .line 134
    div-int/2addr v1, v7

    .line 135
    div-int/2addr v2, v7

    .line 136
    div-int/2addr v3, v7

    .line 137
    div-int/lit8 v11, v4, 0x3

    const/16 v12, 0x5a

    if-le v11, v12, :cond_4

    div-int/lit8 v8, v4, 0x3

    .line 140
    .local v8, faceWidthRestrict:I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Landroid/hardware/Camera$Face;

    array-length v10, v0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v6, v0, v9

    .line 141
    .restart local v6       #face:Landroid/hardware/Camera$Face;
    if-nez v6, :cond_5

    .line 140
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 137
    .end local v6           #face:Landroid/hardware/Camera$Face;
    .end local v8           #faceWidthRestrict:I
    :cond_4
    const/16 v8, 0x5a

    goto :goto_2

    .line 144
    .restart local v6       #face:Landroid/hardware/Camera$Face;
    .restart local v8       #faceWidthRestrict:I
    :cond_5
    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v8, :cond_6

    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-gt v11, v12, :cond_6

    iget-object v11, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_3

    .line 147
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 151
    .end local v6           #face:Landroid/hardware/Camera$Face;
    :cond_7
    const/16 v11, 0x29e

    if-gt v4, v11, :cond_8

    const/16 v11, 0x29e

    if-le v1, v11, :cond_9

    :cond_8
    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/camera/ui/FaceView;->mIsBigFace:Z

    .line 152
    const/4 v11, 0x1

    goto :goto_1

    .line 151
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    .line 243
    .local v8, screenNail:Lcom/android/camera/CameraScreenNail;
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_1

    if-eqz v8, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 250
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 251
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v7

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 261
    .end local v7           #i:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 262
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreivousFaces()V

    .line 226
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 238
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 157
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)Z
    .locals 3
    .parameter "faces"

    .prologue
    .line 67
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 70
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .parameter "mirror"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 168
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 162
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 164
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 211
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 197
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 204
    return-void
.end method
