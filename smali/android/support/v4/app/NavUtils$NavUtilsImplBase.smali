.class Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.super Ljava/lang/Object;
.source "NavUtils.java"

# interfaces
.implements Landroid/support/v4/app/NavUtils$NavUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "parentName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 57
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .local v4, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p1, v4}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "grandparent":Ljava/lang/String;
    if-eqz v1, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 54
    .end local v1    # "grandparent":Ljava/lang/String;
    .end local v2    # "parentIntent":Landroid/content/Intent;
    .end local v4    # "target":Landroid/content/ComponentName;
    :cond_0
    return-object v7

    .line 60
    .restart local v1    # "grandparent":Ljava/lang/String;
    .restart local v4    # "target":Landroid/content/ComponentName;
    :cond_1
    invoke-static {v4}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 64
    .end local v1    # "grandparent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NavUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v7
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "parentActivity":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2

    .line 92
    :goto_0
    return-object v0

    .line 86
    .end local v0    # "parentActivity":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 88
    .restart local v0    # "parentActivity":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 90
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 82
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
