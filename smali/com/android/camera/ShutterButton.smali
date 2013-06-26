.class public Lcom/android/camera/ShutterButton;
.super Landroid/widget/RelativeLayout;
.source "ShutterButton.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z

.field private mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

.field private mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 99
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 100
    if-nez v0, :cond_1

    .line 122
    new-instance v1, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 130
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    .line 132
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    .line 68
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    .line 152
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 155
    :cond_0
    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonLongClick()Z

    move-result v0

    .line 146
    :cond_0
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 75
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 84
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 57
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 162
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setPressed(Z)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 63
    return-void
.end method
