.class Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;
.super Ljava/lang/Object;
.source "FragmentFilter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;->this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;->this$1:Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->-get0(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
