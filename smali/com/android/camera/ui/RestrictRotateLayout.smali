.class public Lcom/android/camera/ui/RestrictRotateLayout;
.super Landroid/widget/FrameLayout;
.source "RestrictRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field mOrientation:I

.field private final mViewVisitAction:Lcom/android/camera/ui/UIHelper$ViewVisitAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/android/camera/ui/RestrictRotateLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RestrictRotateLayout$1;-><init>(Lcom/android/camera/ui/RestrictRotateLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/RestrictRotateLayout;->mViewVisitAction:Lcom/android/camera/ui/UIHelper$ViewVisitAction;

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureHeightByBackground(Landroid/view/View;)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 23
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 27
    rem-int/lit16 p1, p1, 0x168

    .line 28
    iget v0, p0, Lcom/android/camera/ui/RestrictRotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/RestrictRotateLayout;->mOrientation:I

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/RestrictRotateLayout;->mViewVisitAction:Lcom/android/camera/ui/UIHelper$ViewVisitAction;

    invoke-static {p0, v0}, Lcom/android/camera/ui/UIHelper;->visitAllChildViews(Landroid/view/View;Lcom/android/camera/ui/UIHelper$ViewVisitAction;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/ui/RestrictRotateLayout;->requestLayout()V

    goto :goto_0
.end method
