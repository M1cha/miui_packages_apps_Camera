.class public Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemPadding"
.end annotation


# instance fields
.field protected mEffectListLeft:I

.field protected mHorizontalPadding:I

.field protected mVerticalPadding:I

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mHorizontalPadding:I

    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mVerticalPadding:I

    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mEffectListLeft:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mEffectListLeft:I

    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mVerticalPadding:I

    iget v3, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mHorizontalPadding:I

    iget v4, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mVerticalPadding:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
