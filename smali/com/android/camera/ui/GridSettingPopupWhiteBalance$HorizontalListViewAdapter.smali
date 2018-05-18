.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridSettingPopupWhiteBalance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Lcom/android/camera/ui/NumericListAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/NumericListAdapter;->getItemsCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mNumAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/NumericListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;)V

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0060

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->-set0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-static {v2}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->-get1(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-static {v2}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->-get0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->-get0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;

    goto :goto_0
.end method
