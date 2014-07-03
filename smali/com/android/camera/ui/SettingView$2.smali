.class Lcom/android/camera/ui/SettingView$2;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SettingView;->startAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SettingView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    iput-boolean v2, v0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    #getter for: Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/camera/ui/SettingView;->access$000(Lcom/android/camera/ui/SettingView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    #getter for: Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/camera/ui/SettingView;->access$000(Lcom/android/camera/ui/SettingView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$2;->this$0:Lcom/android/camera/ui/SettingView;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/ui/SettingView;->access$002(Lcom/android/camera/ui/SettingView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 201
    :cond_1
    return-void
.end method
