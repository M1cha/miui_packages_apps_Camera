.class public Lcom/android/camera/ui/ModeButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "ModeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected notifyClickToDispatcher()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ModeButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "pref_camera_mode_settings_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/ModeButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0a001f

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
