.class public abstract Lcom/android/camera/ui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

.field protected mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

.field protected mOrientation:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 63
    new-instance v0, Lcom/android/camera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    const v1, 0x7f020130

    if-ne p2, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected performZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 109
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 110
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    if-eqz v1, :cond_0

    .line 112
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    .line 113
    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 115
    iput v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    goto :goto_0
.end method

.method public scaleZoomIndex(F)Z
    .locals 3
    .parameter "contrast"

    .prologue
    .line 142
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 143
    .local v0, zoomIndex:I
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    if-ne v0, v1, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    .line 146
    :cond_0
    if-gez v0, :cond_1

    .line 147
    const/4 p1, 0x0

    .line 153
    :goto_1
    float-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/ZoomControl;->performZoom(D)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 155
    const/4 v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-le v0, v1, :cond_2

    .line 149
    const/high16 p1, 0x3f80

    goto :goto_1

    .line 151
    :cond_2
    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    int-to-float v2, v2

    div-float p1, v1, v2

    goto :goto_1
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 136
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/ui/ZoomControl;->mListener:Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;

    .line 94
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mOrientation:I

    .line 122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 123
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/RotateImageView;

    if-eqz v3, :cond_0

    .line 126
    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 101
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomIndex:I

    .line 105
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 106
    return-void
.end method

.method public setZoomMax(I)V
    .locals 0
    .parameter "zoomMax"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/camera/ui/ZoomControl;->mZoomMax:I

    .line 89
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 90
    return-void
.end method
