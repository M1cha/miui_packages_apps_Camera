.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedInformation.java"


# instance fields
.field private final newString:Ljava/lang/String;

.field private final remaining:Z

.field private final remainingValue:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "newPosition"
    .parameter "newString"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 40
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    .line 42
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    .line 43
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .parameter "newPosition"
    .parameter "newString"
    .parameter "remainingValue"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    .line 48
    iput p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    .line 49
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method getNewString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    return-object v0
.end method

.method getRemainingValue()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    return v0
.end method

.method isRemaining()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    return v0
.end method
