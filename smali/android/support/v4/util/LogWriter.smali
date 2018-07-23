.class public Landroid/support/v4/util/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 40
    iput-object p1, p0, Landroid/support/v4/util/LogWriter;->mTag:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private flushBuilder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mTag:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    .line 45
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    .line 49
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 61
    return-void

    .line 53
    :cond_0
    add-int v2, p2, v1

    aget-char v0, p1, v2

    .line 54
    .local v0, "c":C
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 58
    iget-object v2, p0, Landroid/support/v4/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/util/LogWriter;->flushBuilder()V

    goto :goto_1
.end method
