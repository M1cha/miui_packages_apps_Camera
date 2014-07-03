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


# static fields
.field private static LONG_PRESSED_TRIGER_TIME:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mLongClickable:Z

.field private mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

.field private mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/ShutterButton;->LONG_PRESSED_TRIGER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;)V

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 117
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 118
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 120
    .local v3, "y":F
    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return v5

    .line 122
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 123
    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mLongClickable:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v1, v5

    .line 124
    .local v1, "needClick":Z
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    .line 126
    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    if-eqz v6, :cond_2

    .line 127
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 128
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 132
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_0

    .line 133
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6, v4, v7}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .end local v1    # "needClick":Z
    :cond_3
    move v1, v4

    .line 123
    goto :goto_1

    .line 139
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 140
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_4

    .line 141
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6, v5, v7}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    .line 143
    :cond_4
    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mLongClickable:Z

    if-eqz v6, :cond_0

    .line 144
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/android/camera/ShutterButton;->LONG_PRESSED_TRIGER_TIME:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isCancled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    .line 86
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 88
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 93
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 102
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mLongClickable:Z

    .line 112
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 75
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 160
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setPressed(Z)V

    .line 80
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 81
    return-void
.end method
