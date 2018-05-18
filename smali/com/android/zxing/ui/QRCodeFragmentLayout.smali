.class public Lcom/android/zxing/ui/QRCodeFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "QRCodeFragmentLayout.java"


# instance fields
.field private mFadeHide:Landroid/view/animation/Animation;

.field private mFadeShow:Landroid/view/animation/Animation;

.field private mViewFinderButton:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mViewFinderButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;

    invoke-direct {v1, p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;-><init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
