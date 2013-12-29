.class Lcom/android/gallery3d/app/PhotoPage$4;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 2
    .parameter "confirmed"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getActionId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 596
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 597
    return-void

    .line 592
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getSecureSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setSecureSize(I)V

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c009d
        :pswitch_0
    .end packed-switch
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 580
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 577
    return-void
.end method
