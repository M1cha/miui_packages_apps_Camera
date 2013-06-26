.class public final Lcom/google/zxing/MultiFormatReader;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private hints:Ljava/util/Hashtable;

.field private readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 4
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 154
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 157
    .local v1, reader:Lcom/google/zxing/Reader;
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Hashtable;

    invoke-interface {v1, p1, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 158
    :catch_0
    move-exception v3

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 1
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 145
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 146
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 147
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 148
    .local v1, reader:Lcom/google/zxing/Reader;
    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method

.method public setHints(Ljava/util/Hashtable;)V
    .locals 5
    .parameter "hints"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 91
    iput-object p1, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Hashtable;

    .line 93
    if-eqz p1, :cond_9

    sget-object v3, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v2, v4

    .line 94
    .local v2, tryHarder:Z
    :goto_0
    if-nez p1, :cond_a

    const/4 v1, 0x0

    .line 95
    .local v1, formats:Ljava/util/Vector;
    :goto_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    .line 96
    if-eqz v1, :cond_6

    .line 97
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v4

    .line 110
    .local v0, addOneDReader:Z
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 111
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 113
    :cond_2
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    :cond_3
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/datamatrix/DataMatrixReader;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 119
    :cond_4
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->PDF417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/pdf417/PDF417Reader;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 124
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    .end local v0           #addOneDReader:Z
    :cond_6
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 128
    if-nez v2, :cond_7

    .line 129
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    :cond_7
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/datamatrix/DataMatrixReader;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    if-eqz v2, :cond_8

    .line 139
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    :cond_8
    return-void

    .end local v1           #formats:Ljava/util/Vector;
    .end local v2           #tryHarder:Z
    :cond_9
    move v2, v0

    .line 93
    goto/16 :goto_0

    .line 94
    .restart local v2       #tryHarder:Z
    :cond_a
    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    move-object v1, v3

    goto/16 :goto_1
.end method
