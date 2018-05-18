.class public Lcom/android/camera/ui/V6SurfaceViewFrame;
.super Landroid/widget/FrameLayout;
.source "V6SurfaceViewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/ui/V6SurfaceManager;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    const v2, 0x7f0a00ce

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x3

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x0

    const v2, 0x7f0a00ce

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
