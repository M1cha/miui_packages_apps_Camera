.class public Lmiui/external/SdkErrorActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/SdkErrorActivity$1;,
        Lmiui/external/SdkErrorActivity$2;,
        Lmiui/external/SdkErrorActivity$SdkDialogFragment;
    }
.end annotation


# static fields
.field private static final synthetic v:[I


# instance fields
.field private s:Landroid/content/DialogInterface$OnClickListener;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lmiui/external/SdkErrorActivity$1;

    invoke-direct {v0, p0}, Lmiui/external/SdkErrorActivity$1;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lmiui/external/SdkErrorActivity$2;

    invoke-direct {v0, p0}, Lmiui/external/SdkErrorActivity$2;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->u:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private H(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private I()Landroid/app/Dialog;
    .locals 3

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MIUI SDK\u53d1\u751f\u9519\u8bef"

    const-string/jumbo v0, "\u8bf7\u91cd\u65b0\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->L(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "MIUI SDK encounter errors"

    const-string/jumbo v0, "Please re-install MIUI SDK and then re-run this application."

    goto :goto_0
.end method

.method private J()Landroid/app/Dialog;
    .locals 4

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->P()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    const-string/jumbo v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->L(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "MIUI SDK too old"

    const-string/jumbo v0, "Please upgrade MIUI SDK and then re-run this application."

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    const-string/jumbo v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002\u662f\u5426\u73b0\u5728\u5347\u7ea7\uff1f"

    :goto_1
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2, v3}, Lmiui/external/SdkErrorActivity;->H(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v1, "MIUI SDK too old"

    const-string/jumbo v0, "Please upgrade MIUI SDK and then re-run this application. Upgrade now?"

    goto :goto_1
.end method

.method private K()Landroid/app/Dialog;
    .locals 3

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230MIUI SDK"

    const-string/jumbo v0, "\u8bf7\u5148\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->L(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "MIUI SDK not found"

    const-string/jumbo v0, "Please install MIUI SDK and then re-run this application."

    goto :goto_0
.end method

.method private L(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private M()Landroid/app/Dialog;
    .locals 4

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MIUI SDK\u6b63\u5728\u66f4\u65b0"

    const-string/jumbo v0, "\u8bf7\u7a0d\u5019..."

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "MIUI SDK updating"

    const-string/jumbo v0, "Please wait..."

    goto :goto_0
.end method

.method private N()Landroid/app/Dialog;
    .locals 3

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MIUI SDK\u66f4\u65b0\u5931\u8d25"

    const-string/jumbo v0, "\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->L(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "MIUI SDK update failed"

    const-string/jumbo v0, "Please try it later."

    goto :goto_0
.end method

.method private O()Landroid/app/Dialog;
    .locals 3

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MIUI SDK\u66f4\u65b0\u5b8c\u6210"

    const-string/jumbo v0, "\u8bf7\u91cd\u65b0\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->L(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "MIUI SDK updated"

    const-string/jumbo v0, "Please re-run this application."

    goto :goto_0
.end method

.method private P()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lmiui/external/c;->c()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "supportUpdate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private Q()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/c;->c()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "update"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic R(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->M()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic S(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->N()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic T(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->O()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic U(Lmiui/external/SdkErrorActivity;)Z
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->Q()Z

    move-result v0

    return v0
.end method

.method private static synthetic V()[I
    .locals 3

    sget-object v0, Lmiui/external/SdkErrorActivity;->v:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/external/SdkErrorActivity;->v:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/external/SdkConstants$SdkError;->values()[Lmiui/external/SdkConstants$SdkError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lmiui/external/SdkErrorActivity;->v:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x1030055

    invoke-virtual {p0, v1}, Lmiui/external/SdkErrorActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/external/SdkErrorActivity;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/external/SdkErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "com.miui.sdk.error"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmiui/external/SdkConstants$SdkError;

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    :cond_1
    invoke-static {}, Lmiui/external/SdkErrorActivity;->V()[I

    move-result-object v1

    invoke-virtual {v0}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->I()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    invoke-direct {v1, p0, v0}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    invoke-virtual {p0}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "SdkErrorPromptDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->K()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->J()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
