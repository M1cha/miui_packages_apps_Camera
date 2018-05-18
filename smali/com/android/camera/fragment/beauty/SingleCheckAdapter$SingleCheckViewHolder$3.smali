.class Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;
.super Landroid/view/animation/LinearInterpolator;
.source "SingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->animateIn(Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

.field final synthetic val$imageView:Lcom/android/camera/ui/ColorImageView;

.field final synthetic val$textImage:Lcom/android/camera/ui/ColorImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->val$textImage:Lcom/android/camera/ui/ColorImageView;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v1, v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->-get0(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v3, v3, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->-get1(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v4, v4, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v4}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->-get2(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->val$textImage:Lcom/android/camera/ui/ColorImageView;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v2, v2, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->-get5(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/FloatEvaluator;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return v0
.end method
