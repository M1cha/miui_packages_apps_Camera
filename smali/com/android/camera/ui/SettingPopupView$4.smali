.class Lcom/android/camera/ui/SettingPopupView$4;
.super Ljava/lang/Object;
.source "SettingPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SettingPopupView;->initColorEffectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SettingPopupView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SettingPopupView;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    #calls: Lcom/android/camera/ui/SettingPopupView;->popupColorEffectView()V
    invoke-static {v0}, Lcom/android/camera/ui/SettingPopupView;->access$100(Lcom/android/camera/ui/SettingPopupView;)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingPopupView;->updateExitLayout(Z)V

    .line 324
    return-void
.end method
