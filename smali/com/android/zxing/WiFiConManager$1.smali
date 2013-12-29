.class Lcom/android/zxing/WiFiConManager$1;
.super Landroid/os/AsyncTask;
.source "WiFiConManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/WiFiConManager;->connectInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/zxing/WiFiConManager;


# direct methods
.method constructor <init>(Lcom/android/zxing/WiFiConManager;)V
    .locals 4

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$000(Lcom/android/zxing/WiFiConManager;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    const/4 v3, 0x0

    #calls: Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/zxing/WiFiConManager;->access$100(Lcom/android/zxing/WiFiConManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/WiFiConManager$1;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    #calls: Lcom/android/zxing/WiFiConManager;->connect()I
    invoke-static {v1}, Lcom/android/zxing/WiFiConManager;->access$200(Lcom/android/zxing/WiFiConManager;)I

    move-result v0

    .line 54
    .local v0, ret:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/zxing/WiFiConManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "ret"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$1;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$000(Lcom/android/zxing/WiFiConManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/zxing/WiFiConManager$1;->this$0:Lcom/android/zxing/WiFiConManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/zxing/WiFiConManager;->access$100(Lcom/android/zxing/WiFiConManager;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/zxing/WiFiConManager$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
