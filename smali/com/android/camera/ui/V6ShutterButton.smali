.class public Lcom/android/camera/ui/V6ShutterButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ShutterButton.java"


# instance fields
.field private mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

.field private mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isPressed()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonInternal;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setRadius(II)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setEnabled(Z)V

    return-void
.end method
