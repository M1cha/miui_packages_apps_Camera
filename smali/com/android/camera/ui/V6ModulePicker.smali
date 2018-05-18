.class public Lcom/android/camera/ui/V6ModulePicker;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ModulePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCurrentModule:I


# instance fields
.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ModulePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    sget-object v0, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ModulePicker onclick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x0

    const v2, 0x7f0a0017

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    return-void
.end method
