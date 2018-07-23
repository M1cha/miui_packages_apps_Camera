.class public Landroid/support/v4/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    .line 678
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    .line 679
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    .line 680
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    .line 681
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 673
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 902
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 906
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 902
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v4

    .line 907
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    const-string/jumbo v3, "Could not retrieve icon for calling activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    return-object v4
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 924
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 926
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 928
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 924
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v4

    .line 929
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    const-string/jumbo v3, "Could not retrieve icon for calling application"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    return-object v4
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 946
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 950
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 946
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v4

    .line 951
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    const-string/jumbo v3, "Could not retrieve label for calling application"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    return-object v4
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 750
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 752
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 753
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spanned;

    if-nez v2, :cond_2

    .line 755
    if-eqz v1, :cond_0

    .line 756
    invoke-static {}, Landroid/support/v4/app/ShareCompat;->access$000()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/support/v4/app/ShareCompat$ShareCompatImpl;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_2
    check-cast v1, Landroid/text/Spanned;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStream()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 793
    if-eqz p1, :cond_3

    .line 796
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stream items available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " index requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    goto :goto_0

    .line 791
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    .line 794
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getStreamCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 808
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 811
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 814
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    return v0

    .line 808
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    goto :goto_0

    .line 812
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 814
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultipleShare()Z
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShareIntent()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public isSingleShare()Z
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
