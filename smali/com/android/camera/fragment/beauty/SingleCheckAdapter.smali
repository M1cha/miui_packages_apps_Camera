.class public Lcom/android/camera/fragment/beauty/SingleCheckAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;,
        Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColorNormal:I

.field private mColorSelected:I

.field private mContext:Landroid/content/Context;

.field private mEnableClick:Z

.field private mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field private mItemHorizontalMargin:I

.field private mPreSelectedItem:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedItem:I

.field private mSingleCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/ArgbEvaluator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorNormal:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorSelected:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/FloatEvaluator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorNormal:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorSelected:I

    iput p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    :try_start_0
    invoke-virtual {p1, v1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->setDateToView(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    invoke-direct {v2, p0, v1, p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;-><init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)V

    return-object v2
.end method

.method public onItemHolderClick(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->getItemId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return-void
.end method
