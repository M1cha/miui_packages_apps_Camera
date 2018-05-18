.class public Lcom/android/camera/ui/SettingDismissButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "SettingDismissButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingDismissButton;->mVisible:Z

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SettingDismissButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/SettingDismissButton;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingDismissButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/ui/SettingDismissButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0a00db

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/SettingDismissButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method
