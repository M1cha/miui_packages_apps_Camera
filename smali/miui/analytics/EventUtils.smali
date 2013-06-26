.class public Lmiui/analytics/EventUtils;
.super Ljava/lang/Object;
.source "EventUtils.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "event_id"

.field public static final COLUMN_PARAM:Ljava/lang/String; = "param"

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DEFAULT_MAXSAVE:I = 0x7

.field public static final FIRST_DATE:Ljava/lang/String; = "first_date"

.field public static final TYPE_EVENT:I = 0x2

.field public static final TYPE_LOG:I = 0x1

.field public static final TYPE_TRACKPAGEVIEW:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDatabaseFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "%s-journal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, journal:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    :cond_0
    return-void
.end method

.method public static enableWrite(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    sget-boolean v4, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v4, :cond_0

    move v1, v2

    .line 28
    .local v1, default_value:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "upload_log_pref"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, allow:I
    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0           #allow:I
    .end local v1           #default_value:I
    :cond_0
    move v1, v3

    .line 27
    goto :goto_0

    .restart local v0       #allow:I
    .restart local v1       #default_value:I
    :cond_1
    move v2, v3

    .line 30
    goto :goto_1
.end method

.method public static getDatabaseIndexFromTime(J)I
    .locals 1
    .parameter "time"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lmiui/analytics/EventUtils;->getDay(J)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public static getDatabaseName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lmiui/analytics/EventUtils;->getDay(J)I

    move-result v1

    rem-int/lit8 v0, v1, 0x7

    .line 43
    .local v0, curIndex:I
    invoke-static {v0}, Lmiui/analytics/EventUtils;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDatabaseName(I)Ljava/lang/String;
    .locals 4
    .parameter "curIndex"

    .prologue
    .line 47
    const-string v0, "analytics_%d.db"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDay(J)I
    .locals 2
    .parameter "time"

    .prologue
    .line 34
    const-wide/32 v0, 0x5265c00

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method
