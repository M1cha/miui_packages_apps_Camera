.class public Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;
.super Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectStillItemHolder"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mSelectedIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;-><init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/view/View;)V

    const v0, 0x7f0a002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a002e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    iget v1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentFilter;->-get2(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    iget v2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/FragmentFilter;->-wrap0(Lcom/android/camera/fragment/FragmentFilter;Landroid/widget/ImageView;I)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v2}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    const v3, 0x7f0f0124

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/FragmentFilter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;-><init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentFilter;->-get0(Lcom/android/camera/fragment/FragmentFilter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentFilter;->-get1(Lcom/android/camera/fragment/FragmentFilter;)Lmiui/view/animation/CubicEaseOutInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;-><init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentFilter;->-get0(Lcom/android/camera/fragment/FragmentFilter;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentFilter;->-get4(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentFilter;->-get1(Lcom/android/camera/fragment/FragmentFilter;)Lmiui/view/animation/CubicEaseOutInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$3;-><init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method
