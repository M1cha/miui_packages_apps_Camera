.class public final Lcom/android/camera/effect/renders/PipeRenderPair;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRenderPair.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mFirstRender:Lcom/android/camera/effect/renders/Render;

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFrameBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mSecondRender:Lcom/android/camera/effect/renders/Render;

.field private mTextureFilled:Z

.field private mUseMiddleBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/PipeRenderPair;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    invoke-virtual {p0, p3, p4}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    iput-boolean p5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    iput-boolean p4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method

.method private getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;
    .locals 12

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v2

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v1

    if-ge p1, p2, :cond_1

    int-to-double v6, v1

    int-to-double v8, v2

    div-double/2addr v6, v8

    int-to-double v8, p2

    int-to-double v10, p1

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    :goto_1
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    int-to-double v6, v2

    int-to-double v8, v1

    div-double/2addr v6, v8

    int-to-double v8, p1

    int-to-double v10, p2

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v6

    invoke-static {p1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-static {v1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v6

    invoke-static {p2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FrameBuffer;

    :cond_3
    if-nez v0, :cond_5

    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mParentFrameBufferId:I

    invoke-direct {v0, v6, p1, p2, v7}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    return-void
.end method

.method private updateMiddleBuffer(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    div-int/lit8 v0, p1, 0xc

    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    div-int/lit8 v0, p2, 0xc

    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    goto :goto_0
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getRenderSize()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "At most 2 renders are supported in PipeRenderPair!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method public copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    if-eq v0, v1, :cond_4

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    iget v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mParentFrameBufferId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    :goto_1
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    goto :goto_1
.end method

.method public deleteBuffer()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 12

    const/16 v2, 0xa

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getRenderSize()I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getRenderSize()I

    move-result v0

    if-eq v0, v11, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    move-object v9, p1

    check-cast v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    :cond_3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isMainFrameDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isHoldBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;->copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    invoke-virtual {p0, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;->drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_4
    :goto_0
    return v11

    :cond_5
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    :goto_1
    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    if-ne v0, v2, :cond_a

    :cond_8
    move-object v8, p1

    check-cast v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    if-ne v0, v2, :cond_9

    iget v0, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v1, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    :cond_9
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v2, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iget v3, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iget v4, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v5, v8, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return v11

    :cond_a
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    move-object v10, p1

    check-cast v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v1, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v2, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget v5, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v6, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    iget-boolean v7, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    move v4, v3

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    iget-object v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    iget v3, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    iget v4, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v5, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    iget-boolean v6, v10, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return v11

    :cond_b
    return v3
.end method

.method public drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v6, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method public prepareCopyBlurTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public setFirstRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->clearRenders()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0xc

    :goto_0
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    div-int/lit8 v0, v0, 0xc

    :goto_1
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    goto :goto_1
.end method

.method public setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->clearRenders()V

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iput-object p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    return-void
.end method

.method public setSecondRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->clearRenders()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    return-void
.end method

.method public setUsedMiddleBuffer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method
