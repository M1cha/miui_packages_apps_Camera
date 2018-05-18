.class public Lcom/android/camera/ui/ScreenView$SlideBar;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/camera/ui/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SlideBar"
.end annotation


# instance fields
.field private mPadding:Landroid/graphics/Rect;

.field private mPos:Landroid/graphics/Rect;

.field private mSlidePoint:Landroid/graphics/NinePatch;


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public fastOffset(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SlideBar;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SlideBar;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SlideBar;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView$SlideBar;->setRight(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView$SlideBar;->setLeft(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSlideWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    sub-int v2, p4, p2

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    return v0
.end method

.method public setPosition(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method
