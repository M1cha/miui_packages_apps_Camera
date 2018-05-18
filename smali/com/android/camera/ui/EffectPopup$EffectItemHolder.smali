.class public abstract Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EffectItemHolder"
.end annotation


# instance fields
.field protected mEffectIndex:I

.field protected mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 3

    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mEffectIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object v1, v1, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mEffectIndex:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public updateBackground()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0d000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
