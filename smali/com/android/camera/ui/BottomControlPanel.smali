.class public Lcom/android/camera/ui/BottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlPanel.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mControl:Landroid/widget/RelativeLayout;

.field public mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

.field private mLowerControlGroup:Landroid/widget/RelativeLayout;

.field public mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

.field public mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlUpperPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlLowerPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CaptureControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlPanel;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    return-void
.end method
