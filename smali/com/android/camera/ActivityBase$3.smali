.class Lcom/android/camera/ActivityBase$3;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->initSettingButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSettingButtonClick()V
    .locals 2

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 715
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v1, Lcom/android/camera/ActivityBase;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 719
    .local v0, view:Lcom/android/camera/ui/SettingView;
    if-nez v0, :cond_1

    .line 726
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 721
    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->dismiss()V

    goto :goto_0

    .line 723
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->show()V

    .line 724
    iget-object v1, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method
