.class public Lcom/android/gallery3d/ui/GLCanvasImpl;
.super Lcom/android/gallery3d/ui/BaseGLCanvas;
.source "GLCanvasImpl.java"


# instance fields
.field private mEffectRenderGroup:Lcom/android/camera/effect/renders/EffectRenderGroup;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;-><init>()V

    new-instance v1, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v0, Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenderGroup:Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v2, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->initialize()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return-void
.end method

.method public getEffectRender()Lcom/android/camera/effect/renders/EffectRenderGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenderGroup:Lcom/android/camera/effect/renders/EffectRenderGroup;

    return-object v0
.end method

.method protected initialize()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->initialize()V

    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method public prepareBlurRenders()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->prepareEffectRenders(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    const-string/jumbo v0, "GLCanvasImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " modelMatrix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->getModelMatrix()[F

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->dumpMatrix([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setSticker(Ljava/lang/String;)V

    return-void
.end method
