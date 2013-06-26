.class Lcom/android/camera/ui/SettingPopupView$2;
.super Ljava/lang/Object;
.source "SettingPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingPopupView;
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
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_camera_coloreffect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/SettingPopupView;->access$002(Lcom/android/camera/ui/SettingPopupView;Z)Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    const-string v1, "mode_none"

    iput-object v1, v0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    const-string v1, "mode_none"

    invoke-interface {v0, p1, v1}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingPopupView;->reloadPreferences()V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$2;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingPopupView;->dismiss()V

    .line 236
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void
.end method
