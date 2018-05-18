.class public Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExtraCustomWBListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

.field private mOnCreated:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/ComponentManuallyWB;Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mOnCreated:Z

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    return-void
.end method

.method private changeValue(I)V
    .locals 7

    mul-int/lit8 v2, p1, 0x64

    add-int/lit16 v0, v2, 0x7d0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->setCustomWB(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getValuePosition()I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB()I

    move-result v0

    add-int/lit16 v1, v0, -0x7d0

    div-int/lit8 v1, v1, 0x64

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040015

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;-><init>(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)V

    const v2, 0x7f0a005b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-static {v0, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->-set0(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;Lcom/android/camera/ui/ColorImageView;)Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f0a005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {v0, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->-set1(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v2

    const v3, -0x4c000001

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    invoke-static {v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v2

    const v3, -0xff5701

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    mul-int/lit8 v2, p1, 0x64

    add-int/lit16 v2, v2, 0x7d0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mOnCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mOnCreated:Z

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    check-cast p1, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->changeValue(I)V

    return-void
.end method

.method public onSingleTapDown(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->changeValue(I)V

    return-void
.end method
