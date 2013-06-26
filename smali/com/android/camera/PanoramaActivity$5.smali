.class Lcom/android/camera/PanoramaActivity$5;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 657
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 658
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mStartMoveHintArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2200(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mProgressArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 663
    .local v0, leftIndicator:Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 664
    .local v1, rightIndicator:Landroid/view/View;
    if-ne p1, v6, :cond_2

    .line 665
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 666
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 672
    .end local v0           #leftIndicator:Landroid/view/View;
    .end local v1           #rightIndicator:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 668
    .restart local v0       #leftIndicator:Landroid/view/View;
    .restart local v1       #rightIndicator:Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 669
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
