.class final Lcom/android/camera/RotateDialogController$6;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkrun:Ljava/lang/Runnable;

.field final synthetic val$choice:Landroid/widget/CheckBox;

.field final synthetic val$uncheckrun:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/RotateDialogController$6;->val$choice:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/camera/RotateDialogController$6;->val$checkrun:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/camera/RotateDialogController$6;->val$uncheckrun:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/RotateDialogController$6;->val$choice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/RotateDialogController$6;->val$checkrun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/RotateDialogController$6;->val$checkrun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/RotateDialogController$6;->val$uncheckrun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/RotateDialogController$6;->val$uncheckrun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
