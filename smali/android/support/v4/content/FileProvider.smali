.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$PathStrategy;,
        Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "_size"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 630
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 753
    move-object v1, p0

    .line 754
    .local v1, "cur":Ljava/io/File;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, p1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .local v2, "cur":Ljava/io/File;
    :goto_0
    if-lt v3, v4, :cond_0

    .line 759
    return-object v2

    .line 754
    :cond_0
    aget-object v5, p1, v3

    .line 755
    .local v5, "segment":Ljava/lang/String;
    if-nez v5, :cond_1

    move-object v1, v2

    .line 754
    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v2    # "cur":Ljava/io/File;
    goto :goto_0

    .line 756
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_1
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 769
    new-array v0, p1, [Ljava/lang/Object;

    .line 770
    .local v0, "result":[Ljava/lang/Object;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "original"    # [Ljava/lang/String;
    .param p1, "newLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 763
    new-array v0, p1, [Ljava/lang/String;

    .line 764
    .local v0, "result":[Ljava/lang/String;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 530
    sget-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter v0

    .line 531
    :try_start_0
    sget-object v5, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/content/FileProvider$PathStrategy;

    .line 532
    .local v4, "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    if-eqz v4, :cond_0

    .line 544
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    return-object v4

    .line 534
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 542
    :try_start_2
    sget-object v5, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 544
    .end local v4    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    :catchall_0
    move-exception v1

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 535
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .restart local v4    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 538
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 539
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 376
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    .line 377
    .local v0, "strategy":Landroid/support/v4/content/FileProvider$PathStrategy;
    invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 729
    const-string/jumbo v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    const-string/jumbo v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    :cond_0
    const/high16 v0, 0x2c000000

    .line 749
    .local v0, "modeBits":I
    :goto_0
    return v0

    .line 730
    .end local v0    # "modeBits":I
    :cond_1
    const/high16 v0, 0x10000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 731
    .end local v0    # "modeBits":I
    :cond_2
    const-string/jumbo v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    const-string/jumbo v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    const-string/jumbo v1, "rw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 742
    const-string/jumbo v1, "rwt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_3
    const/high16 v0, 0x2a000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 740
    .end local v0    # "modeBits":I
    :cond_4
    const/high16 v0, 0x38000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 743
    .end local v0    # "modeBits":I
    :cond_5
    const/high16 v0, 0x3c000000    # 0.0078125f

    .restart local v0    # "modeBits":I
    goto :goto_0
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 556
    new-instance v4, Landroid/support/v4/content/FileProvider$SimplePathStrategy;

    invoke-direct {v4, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 558
    .local v4, "strat":Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 560
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 562
    .local v0, "in":Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, "type":I
    if-ne v7, v11, :cond_2

    .line 592
    return-object v4

    .line 563
    .end local v7    # "type":I
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 569
    .restart local v7    # "type":I
    :cond_2
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 570
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v8, "name"

    invoke-interface {v0, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v8, "path"

    invoke-interface {v0, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 576
    .local v6, "target":Ljava/io/File;
    const-string/jumbo v8, "root-path"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 578
    const-string/jumbo v8, "files-path"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 580
    const-string/jumbo v8, "cache-path"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 582
    const-string/jumbo v8, "external-path"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 586
    .end local v6    # "target":Ljava/io/File;
    :goto_1
    if-eqz v6, :cond_0

    .line 587
    invoke-virtual {v4, v2, v6}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 577
    .restart local v6    # "target":Ljava/io/File;
    :cond_3
    sget-object v8, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    new-array v9, v11, [Ljava/lang/String;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    goto :goto_1

    .line 581
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    goto :goto_1

    .line 583
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 345
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    .line 348
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    .line 353
    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v2, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v2, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 498
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 451
    iget-object v4, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v4, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 453
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 454
    .local v2, "lastDot":I
    if-gez v2, :cond_1

    .line 462
    :cond_0
    const-string/jumbo v4, "application/octet-stream"

    return-object v4

    .line 455
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "mime":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 458
    return-object v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v2, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v2, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 520
    .local v0, "file":Ljava/io/File;
    invoke-static {p2}, Landroid/support/v4/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v1

    .line 521
    .local v1, "fileMode":I
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v10, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v10, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 414
    .local v4, "file":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 418
    :goto_0
    array-length v10, p2

    new-array v2, v10, [Ljava/lang/String;

    .line 419
    .local v2, "cols":[Ljava/lang/String;
    array-length v10, p2

    new-array v9, v10, [Ljava/lang/Object;

    .line 420
    .local v9, "values":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 421
    .local v5, "i":I
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_1
    if-lt v7, v8, :cond_1

    .line 431
    invoke-static {v2, v6}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v9, v6}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    .line 434
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    invoke-direct {v3, v2, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 435
    .local v3, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 436
    return-object v3

    .line 415
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "cols":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/MatrixCursor;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_0
    sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    goto :goto_0

    .line 421
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cols":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "values":[Ljava/lang/Object;
    :cond_1
    aget-object v1, v0, v7

    .line 422
    .local v1, "col":Ljava/lang/String;
    const-string/jumbo v10, "_display_name"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 425
    const-string/jumbo v10, "_size"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move v5, v6

    .line 421
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 423
    :cond_2
    const-string/jumbo v10, "_display_name"

    aput-object v10, v2, v6

    .line 424
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    goto :goto_2

    .line 426
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_3
    const-string/jumbo v10, "_size"

    aput-object v10, v2, v6

    .line 427
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
