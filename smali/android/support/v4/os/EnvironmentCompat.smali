.class public Landroid/support/v4/os/EnvironmentCompat;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# static fields
.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "EnvironmentCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 56
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .local v3, "version":I
    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "canonicalExternal":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 73
    .end local v0    # "canonicalExternal":Ljava/lang/String;
    .end local v1    # "canonicalPath":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "unknown"

    return-object v4

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/support/v4/os/EnvironmentCompatKitKat;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 67
    .restart local v0    # "canonicalExternal":Ljava/lang/String;
    .restart local v1    # "canonicalPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4

    .line 69
    .end local v0    # "canonicalExternal":Ljava/lang/String;
    .end local v1    # "canonicalPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to resolve canonical path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EnvironmentCompat"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
