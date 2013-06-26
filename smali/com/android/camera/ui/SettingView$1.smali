.class Lcom/android/camera/ui/SettingView$1;
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
    .line 170
    iput-object p1, p0, Lcom/android/camera/ui/SettingView$1;->this$0:Lcom/android/camera/ui/SettingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$1;->this$0:Lcom/android/camera/ui/SettingView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$1;->this$0:Lcom/android/camera/ui/SettingView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingView$1;->this$0:Lcom/android/camera/ui/SettingView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$1;->this$0:Lcom/android/camera/ui/SettingView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingView$1;->this$0:Lcom/android/camera/ui/SettingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    .line 178
    return-void
.end method
