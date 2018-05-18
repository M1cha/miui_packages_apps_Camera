.class public Lcom/android/camera/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z

.field private mFilterInPressState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/TwoStateImageView;->DISABLED_ALPHA:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method

.method public enablePressFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_1
    return-void
.end method
