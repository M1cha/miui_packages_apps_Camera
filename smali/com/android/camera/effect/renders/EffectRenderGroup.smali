.class public Lcom/android/camera/effect/renders/EffectRenderGroup;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "EffectRenderGroup.java"

# interfaces
.implements Lcom/android/camera/effect/EffectController$EffectChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEffectId:I

.field private mFirstFrameDrawn:Z

.field private mIsFocusPeakEnabled:Z

.field private mIsGradienterEnabled:Z

.field private mIsMakeupEnabled:Z

.field private mIsStickerEnabled:Z

.field private mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

.field private mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

.field private mRenderChanged:Z

.field private mTiltShiftMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method private drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getBlurAnimationValue()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    move-object v2, p1

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v2, v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    int-to-float v3, v2

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    int-to-float v4, v2

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 5

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFirstFrameDrawn:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFirstFrameDrawn:Z

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setViewportSize(II)V

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setPreviewSize(II)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->updatePreviewSecondRender()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/PipeRender;->getRenderSize()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setUsedMiddleBuffer(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v2, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->getRenderSize()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v3, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private removeCache(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->removeRender(I)V

    return-void
.end method

.method private updatePreviewSecondRender()Z
    .locals 10

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Z

    if-nez v6, :cond_0

    return v9

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6}, Lcom/android/camera/effect/renders/PipeRender;->clearRenders()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/EffectController;->needDestroyMakeup()Z

    move-result v6

    if-eqz v6, :cond_1

    sget v6, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->removeCache(I)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/camera/effect/EffectController;->setDestroyMakeup(Z)V

    :cond_1
    iget-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsStickerEnabled:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget v7, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2
    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v4}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    iget v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    iput-boolean v9, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Z

    const/4 v6, 0x1

    return v6

    :cond_4
    iget-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    if-eqz v6, :cond_5

    sget v6, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    :cond_5
    iget v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget v7, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    :cond_6
    iget-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsGradienterEnabled:Z

    if-eqz v6, :cond_7

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    :cond_7
    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v6, :cond_8

    const v6, 0x7f0f01b3

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :cond_8
    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    if-eqz v6, :cond_9

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_9
    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/EffectController;->isBeautyFrameReady()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v3}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_a
    if-eqz v0, :cond_b

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_b
    if-eqz v2, :cond_d

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v2}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    :cond_c
    const v6, 0x7f0f01b4

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v6}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    goto :goto_1

    :cond_d
    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v5}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v6, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->prepareCopyBlurTexture()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public varargs onEffectChanged([I)V
    .locals 10

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget v0, p1, v4

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, v9}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v6

    iput v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget-object v6, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEffectId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isStickerEnable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsStickerEnabled:Z

    sget-object v6, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIsStickerEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsStickerEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isMakeupEnable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    sget-object v6, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIsMakeupEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    sget-object v6, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIsFocusPeakEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isDrawTilt()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v3

    const/16 v6, 0xa0

    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    :goto_2
    sget-object v6, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTiltShiftMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isDrawGradienter()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsGradienterEnabled:Z

    sget-object v6, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIsGradienterEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsGradienterEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iput-boolean v9, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
