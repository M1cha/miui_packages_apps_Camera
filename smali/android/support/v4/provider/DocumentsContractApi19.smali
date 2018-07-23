.class Landroid/support/v4/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    return v2

    .line 78
    :cond_0
    return v1

    .line 83
    :cond_1
    return v1
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "flags"

    invoke-static {p0, p1, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "flags":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 105
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_4

    .line 109
    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 113
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    :cond_1
    return v3

    .line 93
    .end local v0    # "flags":I
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    return v3

    .line 101
    .restart local v0    # "flags":I
    .restart local v1    # "type":Ljava/lang/String;
    :cond_3
    return v3

    .line 106
    :cond_4
    return v4

    .line 109
    :cond_5
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_0

    .line 112
    return v4

    .line 113
    :cond_6
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 116
    return v4
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 193
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 131
    .local v9, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "document_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 133
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_0

    .line 138
    .local v6, "-l_4_I":I
    :goto_0
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v6

    .end local v6    # "-l_4_I":I
    :cond_0
    move v6, v11

    .line 133
    goto :goto_0

    .line 134
    .end local v9    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 135
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DocumentFile"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const/4 v7, 0x0

    .line 138
    .local v7, "-l_5_I":I
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v6

    .end local v7    # "-l_5_I":I
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .local v8, "-l_6_R":Ljava/lang/Object;
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 37
    const-string/jumbo v0, "_display_name"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 41
    const-string/jumbo v0, "mime_type"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "rawType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    return-object v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    return v2

    .line 59
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 67
    const-string/jumbo v0, "last_modified"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 71
    const-string/jumbo v0, "_size"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 164
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 173
    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    move-wide/from16 v8, p3

    .line 183
    .local v8, "-l_7_J":J
    invoke-static {v7}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    .line 174
    .end local v8    # "-l_7_J":J
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 183
    .restart local v8    # "-l_7_J":J
    invoke-static {v7}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v8

    .line 179
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "-l_7_J":J
    :catch_0
    move-exception v12

    .line 180
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DocumentFile"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    move-wide/from16 v10, p3

    .line 183
    .local v10, "-l_8_J":J
    invoke-static {v7}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    .end local v10    # "-l_8_J":J
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .local v6, "-l_10_R":Ljava/lang/Object;
    invoke-static {v7}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 148
    .local v9, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 149
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    move-object v6, p3

    .line 158
    .local v6, "-l_6_R":Ljava/lang/Object;
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    .line 149
    .end local v6    # "-l_6_R":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 158
    .restart local v6    # "-l_6_R":Ljava/lang/Object;
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v6

    .line 154
    .end local v6    # "-l_6_R":Ljava/lang/Object;
    .end local v9    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 155
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DocumentFile"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    move-object v7, p3

    .line 158
    .local v7, "-l_7_R":Ljava/lang/Object;
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    .end local v7    # "-l_7_R":Ljava/lang/Object;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .local v8, "-l_8_R":Ljava/lang/Object;
    invoke-static {v9}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
.end method
