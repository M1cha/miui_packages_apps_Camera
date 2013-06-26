.class final Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.super Ljava/lang/Object;
.source "BlockParsedResult.java"


# instance fields
.field private final decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

.field private final finished:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
    .locals 0
    .parameter "information"
    .parameter "finished"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    .line 50
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    .line 51
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .parameter "finished"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    .line 46
    return-void
.end method


# virtual methods
.method getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    return-object v0
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    return v0
.end method
