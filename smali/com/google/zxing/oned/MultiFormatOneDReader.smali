.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatOneDReader.java"


# instance fields
.field private final readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 4
    .parameter "hints"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 41
    if-nez p1, :cond_a

    const/4 v0, 0x0

    .line 43
    .local v0, possibleFormats:Ljava/util/Vector;
    :goto_0
    if-eqz p1, :cond_b

    sget-object v2, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    .line 45
    .local v1, useCode39CheckDigit:Z
    :goto_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    .line 46
    if-eqz v0, :cond_8

    .line 47
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 53
    :cond_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3, v1}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 56
    :cond_2
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 59
    :cond_3
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    :cond_4
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    :cond_5
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 66
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/CodaBarReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    :cond_6
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 71
    :cond_7
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 72
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    :cond_8
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 76
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code39Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    :cond_9
    return-void

    .line 41
    .end local v0           #possibleFormats:Ljava/util/Vector;
    .end local v1           #useCode39CheckDigit:Z
    :cond_a
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    move-object v0, v2

    goto/16 :goto_0

    .line 43
    .restart local v0       #possibleFormats:Ljava/util/Vector;
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 4
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 89
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/OneDReader;

    .line 92
    .local v1, reader:Lcom/google/zxing/oned/OneDReader;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 93
    :catch_0
    move-exception v3

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v1           #reader:Lcom/google/zxing/oned/OneDReader;
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 102
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 103
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 104
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 105
    .local v1, reader:Lcom/google/zxing/Reader;
    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method
