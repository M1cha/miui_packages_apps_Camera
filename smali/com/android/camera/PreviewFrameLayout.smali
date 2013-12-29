.class public Lcom/android/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mBorder:Landroid/view/View;

.field private mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide v0, 0x3ffc71c71c71c71cL

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    .line 46
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_2

    .line 56
    iput-wide p1, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 57
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 59
    :cond_2
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 71
    return-void
.end method

.method public showBorder(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
