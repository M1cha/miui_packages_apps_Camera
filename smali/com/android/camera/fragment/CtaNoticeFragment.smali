.class public Lcom/android/camera/fragment/CtaNoticeFragment;
.super Landroid/app/DialogFragment;
.source "CtaNoticeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/CtaNoticeFragment$CTA;,
        Lcom/android/camera/fragment/CtaNoticeFragment$Licence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;
    .locals 11

    const/16 v10, 0x21

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0f0299

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0f029a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v4, p1, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/camera/fragment/CtaNoticeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$3;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/camera/fragment/CtaNoticeFragment$4;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$4;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/android/camera/ui/UrlSpan;

    invoke-direct {v8, v0}, Lcom/android/camera/ui/UrlSpan;-><init>(Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/android/camera/ui/UrlSpan;

    invoke-direct {v8, v3}, Lcom/android/camera/ui/UrlSpan;-><init>(Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v7
.end method

.method public static checkCta(Landroid/app/FragmentManager;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/camera/fragment/CtaNoticeFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/CtaNoticeFragment;-><init>()V

    const-string/jumbo v1, "CtaNoticeFragment"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/fragment/CtaNoticeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/CtaNoticeFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/fragment/CtaNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f029d

    invoke-static {v3, v4}, Lcom/android/camera/fragment/CtaNoticeFragment;->buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/CtaNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f029e

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/camera/fragment/CtaNoticeFragment$1;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$1;-><init>(Lcom/android/camera/fragment/CtaNoticeFragment;)V

    const v5, 0x7f0f029b

    invoke-virtual {v3, v5, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/camera/fragment/CtaNoticeFragment$2;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$2;-><init>(Lcom/android/camera/fragment/CtaNoticeFragment;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/fragment/CtaNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f029c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/CtaNoticeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
