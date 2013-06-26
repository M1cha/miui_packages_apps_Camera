.class Lcom/android/camera/ui/SettingPopupView$1;
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
    .line 202
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    const-string v2, "mode_none"

    iput-object v2, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 211
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, v1, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v2, v2, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_camera_coloreffect_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingPopupView;->initColorEffectView()V

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iput-object v0, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, "pref_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_camera_panoramamode_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$1;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingPopupView;->dismiss()V

    goto :goto_1
.end method
