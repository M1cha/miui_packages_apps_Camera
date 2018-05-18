.class public Lcom/android/camera/ui/TopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "TopControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;


# instance fields
.field public mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field public mFlashButton:Lcom/android/camera/ui/FlashButton;

.field public mHdrButton:Lcom/android/camera/ui/HdrButton;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field public mPeakButton:Lcom/android/camera/ui/PeakButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hideSubViewExcept(Landroid/view/View;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    instance-of v2, v1, Lcom/android/camera/ui/AnimateView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/camera/ui/AnimateView;

    invoke-interface {v1, p2}, Lcom/android/camera/ui/AnimateView;->hide(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const v3, 0x7f0a00b5

    const v2, 0x7f0a00b4

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    move-object v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HdrButton;->show(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PeakButton;->show(Z)V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->show(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HdrButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PeakButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    return-void
.end method
