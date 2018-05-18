.class public Lcom/android/camera/effect/renders/VideoRecorderRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "VideoRecorderRender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEffectId:I

.field private mFirstFrameDrawn:Z

.field private mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mStickerEnabled:Z

.field private mStickerPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/VideoRecorderRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mViewportHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/VideoRecorderRender;->setViewportSize(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/VideoRecorderRender;->setPreviewSize(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return v2
.end method

.method private getSecondRender(IZ)Lcom/android/camera/effect/renders/Render;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2, v4, p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v2

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-interface {v2, v4, v3}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v2

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    return-object v2

    :cond_3
    return-object v0
.end method

.method private updateSecondRender()V
    .locals 10

    const/4 v9, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v3

    iput v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->isStickerEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    sget-object v3, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "effectId: 0x%x->0x%x stickerEnabled: %b->%b"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget v7, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    iget-boolean v7, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    if-eq v3, v1, :cond_1

    :cond_0
    iput-boolean v9, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    iget v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    iget-boolean v4, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    invoke-direct {p0, v3, v4}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondRender(IZ)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/VideoRecorderRender;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
