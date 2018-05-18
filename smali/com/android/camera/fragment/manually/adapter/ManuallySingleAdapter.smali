.class public Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ManuallySingleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mItemWidth:I

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentMode:I

    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iput p4, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mItemWidth:I

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 6

    const/16 v5, 0x8

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0a005d

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a005e

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a005f

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget v4, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v0, -0xff5701

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const v0, -0x4c000001

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentMode:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->getItemCount()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
