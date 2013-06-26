.class Lcom/android/camera/ui/SettingPopupView$3;
.super Ljava/lang/Object;
.source "SettingPopupView.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractSettingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SettingPopupView;->popupColorEffectView()V
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
    .line 262
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSettingPopup;->reloadPreference()V

    .line 267
    return-void
.end method
