.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 3
    .parameter "hints"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 42
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 44
    .local v0, possibleFormats:Ljava/util/Vector;
    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    .line 45
    if-eqz v0, :cond_2

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    :cond_0
    :goto_1
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    :cond_1
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    :cond_3
    return-void

    .line 42
    .end local v0           #possibleFormats:Ljava/util/Vector;
    :cond_4
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    move-object v0, v1

    goto :goto_0

    .line 48
    .restart local v0       #possibleFormats:Ljava/util/Vector;
    :cond_5
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 17
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v11

    .line 69
    .local v11, startGuardPattern:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v10

    .line 70
    .local v10, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v10, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/UPCEANReader;

    .line 74
    .local v8, reader:Lcom/google/zxing/oned/UPCEANReader;
    :try_start_0
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v11, v2}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 90
    .local v9, result:Lcom/google/zxing/Result;
    sget-object v12, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_2

    const/4 v4, 0x1

    .line 93
    .local v4, ean13MayBeUPCA:Z
    :goto_1
    if-nez p3, :cond_3

    const/4 v6, 0x0

    .line 94
    .local v6, possibleFormats:Ljava/util/Vector;
    :goto_2
    if-eqz v6, :cond_0

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v6, v12}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 96
    .local v3, canReturnUPCA:Z
    :goto_3
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 97
    new-instance v12, Lcom/google/zxing/Result;

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v15

    sget-object v16, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v12 .. v16}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v9, v12

    .line 99
    .end local v9           #result:Lcom/google/zxing/Result;
    :cond_1
    return-object v9

    .line 75
    .end local v3           #canReturnUPCA:Z
    .end local v4           #ean13MayBeUPCA:Z
    .end local v6           #possibleFormats:Ljava/util/Vector;
    :catch_0
    move-exception v7

    .line 70
    .local v7, re:Lcom/google/zxing/ReaderException;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    .end local v7           #re:Lcom/google/zxing/ReaderException;
    .restart local v9       #result:Lcom/google/zxing/Result;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 93
    .restart local v4       #ean13MayBeUPCA:Z
    :cond_3
    sget-object v12, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Vector;

    move-object v6, v12

    goto :goto_2

    .line 94
    .restart local v6       #possibleFormats:Ljava/util/Vector;
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 102
    .end local v4           #ean13MayBeUPCA:Z
    .end local v6           #possibleFormats:Ljava/util/Vector;
    .end local v8           #reader:Lcom/google/zxing/oned/UPCEANReader;
    .end local v9           #result:Lcom/google/zxing/Result;
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 106
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 107
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 108
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 109
    .local v1, reader:Lcom/google/zxing/Reader;
    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method
