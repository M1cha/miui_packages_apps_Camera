.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 133
    iput-object p2, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 134
    iput-object p3, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 135
    iput-object p4, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 137
    iput-object p6, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 84
    move-object v0, p0

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-nez v2, :cond_0

    .line 88
    :goto_0
    monitor-exit p0

    .line 89
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 102
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 104
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    :goto_0
    if-nez v0, :cond_4

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 96
    .end local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_1
    if-nez p1, :cond_2

    .line 99
    :goto_2
    return-void

    .line 97
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 105
    .restart local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_4
    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 238
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 17

    .prologue
    .line 52
    move-object/from16 v8, p0

    .local v8, "-l_1_R":Ljava/lang/Object;
    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v1}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 62
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_1

    .line 72
    :goto_0
    move-object v9, v15

    .line 74
    .local v9, "-l_2_R":Ljava/lang/Object;
    move-object/from16 v10, p0

    .local v10, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 75
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 76
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v15

    .line 54
    .end local v9    # "-l_2_R":Ljava/lang/Object;
    .end local v10    # "-l_3_R":Ljava/lang/Object;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    new-instance v1, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v1

    .line 57
    :catchall_0
    move-exception v9

    .restart local v9    # "-l_2_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 65
    .end local v9    # "-l_2_R":Ljava/lang/Object;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v15, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v16

    .line 68
    .local v16, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 69
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v12

    .local v12, "-l_5_R":Ljava/lang/Object;
    move-object/from16 v13, p0

    .local v13, "-l_6_R":Ljava/lang/Object;
    monitor-enter p0

    .line 75
    const/4 v1, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 76
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v12

    .end local v12    # "-l_5_R":Ljava/lang/Object;
    .end local v13    # "-l_6_R":Ljava/lang/Object;
    .restart local v9    # "-l_2_R":Ljava/lang/Object;
    .restart local v10    # "-l_3_R":Ljava/lang/Object;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v11

    .local v11, "-l_4_R":Ljava/lang/Object;
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v11

    .end local v9    # "-l_2_R":Ljava/lang/Object;
    .end local v10    # "-l_3_R":Ljava/lang/Object;
    .end local v11    # "-l_4_R":Ljava/lang/Object;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "-l_5_R":Ljava/lang/Object;
    .restart local v13    # "-l_6_R":Ljava/lang/Object;
    :catchall_3
    move-exception v14

    .local v14, "-l_7_R":Ljava/lang/Object;
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v14
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 168
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 178
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    .line 180
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    iput-object v1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 184
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 152
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    .line 155
    :goto_1
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    .line 164
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 192
    return-void
.end method
