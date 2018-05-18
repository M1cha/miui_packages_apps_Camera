.class public Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectSelectedOverlay"
.end annotation


# instance fields
.field protected mAnimator:Landroid/animation/ObjectAnimator;

.field protected mOffsetX:I

.field protected mOverlay:Landroid/graphics/drawable/Drawable;

.field protected mPosition:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method private calcOffsetX(II)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->getLeft(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_0

    if-ge p1, p2, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v0

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->getLeft(I)I

    move-result v1

    sub-int v1, v0, v1

    return v1

    :cond_1
    if-le p1, p2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method private getLeft(I)I
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v3}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v1, v3, v4

    :cond_0
    return v1
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v6}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v2, v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v3, v6, v7

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v4, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public select(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->calcOffsetX(II)I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setOffsetX(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->postInvalidateOnAnimation()V

    return-void
.end method
