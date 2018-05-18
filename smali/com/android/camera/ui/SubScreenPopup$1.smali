.class Lcom/android/camera/ui/SubScreenPopup$1;
.super Ljava/lang/Object;
.source "SubScreenPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SubScreenPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-get1(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-wrap2(Lcom/android/camera/ui/SubScreenPopup;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->-get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/SubScreenPopup;->-wrap3(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->-get1(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/camera/ui/SubScreenPopup;->-wrap0(Lcom/android/camera/ui/SubScreenPopup;ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->-get1(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/ui/SubScreenPopup;->-wrap4(Lcom/android/camera/ui/SubScreenPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->-wrap1(Lcom/android/camera/ui/SubScreenPopup;)Z

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
