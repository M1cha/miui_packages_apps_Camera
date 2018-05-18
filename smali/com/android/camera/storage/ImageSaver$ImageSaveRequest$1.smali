.class Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->notifySaveFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->this$1:Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0f00ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->this$1:Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->-get0(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->this$1:Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->-set0(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->this$1:Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->-get0(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0f00ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest$1;->this$1:Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->-get0(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
