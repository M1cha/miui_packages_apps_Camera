.class Lmiui/external/SdkErrorActivity$2$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/SdkErrorActivity$2;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic A:Lmiui/external/SdkErrorActivity$2;

.field final synthetic B:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity$2;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/SdkErrorActivity$2$1;->A:Lmiui/external/SdkErrorActivity$2;

    iput-object p2, p0, Lmiui/external/SdkErrorActivity$2$1;->B:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs W([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->A:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->z:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->U(Lmiui/external/SdkErrorActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected X(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->A:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->z:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->T(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    iget-object v2, p0, Lmiui/external/SdkErrorActivity$2$1;->A:Lmiui/external/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/external/SdkErrorActivity$2;->z:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->A:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->z:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v0}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->A:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->z:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->S(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->W([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->X(Ljava/lang/Boolean;)V

    return-void
.end method
