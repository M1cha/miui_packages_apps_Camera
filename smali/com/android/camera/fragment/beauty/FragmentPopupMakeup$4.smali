.class Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;
.super Ljava/lang/Object;
.source "FragmentPopupMakeup.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v0, p2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->-set0(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->-get1(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lio/reactivex/FlowableEmitter;

    move-result-object v0

    div-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->-get0(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
