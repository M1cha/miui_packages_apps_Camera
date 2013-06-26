.class final Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
.super Ljava/lang/Object;
.source "CurrentParsingState.java"


# instance fields
.field private encoding:I

.field position:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    .line 44
    return-void
.end method


# virtual methods
.method isAlpha()Z
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIsoIec646()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAlpha()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    .line 64
    return-void
.end method

.method setIsoIec646()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    .line 68
    return-void
.end method

.method setNumeric()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    .line 60
    return-void
.end method
