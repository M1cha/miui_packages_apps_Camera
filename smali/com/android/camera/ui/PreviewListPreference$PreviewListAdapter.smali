.class Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;
.super Ljava/lang/Object;
.source "PreviewListPreference.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewListAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mPaddingEnd:I

.field final synthetic this$0:Lcom/android/camera/ui/PreviewListPreference;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PreviewListPreference;Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->this$0:Lcom/android/camera/ui/PreviewListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mPaddingEnd:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->this$0:Lcom/android/camera/ui/PreviewListPreference;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewListPreference;->-get0(Lcom/android/camera/ui/PreviewListPreference;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mPaddingEnd:I

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mPaddingEnd:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
