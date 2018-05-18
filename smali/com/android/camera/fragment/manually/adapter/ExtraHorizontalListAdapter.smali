.class public Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExtraHorizontalListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mOnCreated:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mOnCreated:Z

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method private changeValue(I)V
    .locals 5

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

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
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040015

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;

    invoke-direct {v2, v6}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;-><init>(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)V

    const v4, 0x7f0a005b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorImageView;

    invoke-static {v2, v4}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-set0(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;Lcom/android/camera/ui/ColorImageView;)Lcom/android/camera/ui/ColorImageView;

    const v4, 0x7f0a005c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {v2, v4}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-set1(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get1(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v4

    const v5, -0x4c000001

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get1(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v4

    const v5, -0xff5701

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iget v4, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorImageView;->setVisibility(I)V

    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v4

    iget v5, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorImageView;->setImageResource(I)V

    :goto_1
    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get1(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v4

    iget v5, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setText(I)V

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v0, -0xff5701

    :goto_2
    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->-get0(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, -0x4c000001

    goto :goto_2
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

    iget-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mOnCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mOnCreated:Z

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    check-cast p1, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->changeValue(I)V

    return-void
.end method

.method public onSingleTapDown(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->changeValue(I)V

    return-void
.end method
