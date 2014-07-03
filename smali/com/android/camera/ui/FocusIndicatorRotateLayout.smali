.class public Lcom/android/camera/ui/FocusIndicatorRotateLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;,
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;,
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;
    }
.end annotation


# instance fields
.field private mDisappear:Ljava/lang/Runnable;

.field private mEndAction:Ljava/lang/Runnable;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mEndAction:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusIndicatorRotateLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    return p1
.end method

.method private setDrawable(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setScaleX(F)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setScaleY(F)V

    .line 80
    return-void
.end method

.method public showFail(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .prologue
    .line 67
    iget v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const v0, 0x7f0200a2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    .line 71
    :cond_0
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f400000

    .line 49
    iget v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    if-nez v0, :cond_0

    .line 50
    const v0, 0x7f0200a4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    .line 55
    :cond_0
    return-void
.end method

.method public showSuccess(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    const v0, 0x7f0200a3

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    .line 63
    :cond_0
    return-void
.end method
