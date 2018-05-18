.class public Lcom/android/camera/ui/CaptureControlPanel;
.super Landroid/widget/RelativeLayout;
.source "CaptureControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v2, 0x7f0a0025

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
