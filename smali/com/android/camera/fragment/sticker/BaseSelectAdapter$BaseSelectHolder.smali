.class public abstract Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/BaseSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseSelectHolder"
.end annotation


# instance fields
.field protected mIVSelected:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0067

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->mIVSelected:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract bindView(I)V
.end method
