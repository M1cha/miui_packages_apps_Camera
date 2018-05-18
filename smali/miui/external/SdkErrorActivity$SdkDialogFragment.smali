.class Lmiui/external/SdkErrorActivity$SdkDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdkDialogFragment"
.end annotation


# instance fields
.field private w:Landroid/app/Dialog;

.field final synthetic x:Lmiui/external/SdkErrorActivity;


# direct methods
.method public constructor <init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->x:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p2, p0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->w:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->w:Landroid/app/Dialog;

    return-object v0
.end method
