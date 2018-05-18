.class final Lcom/android/zxing/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private mCancel:Z

.field private final mContext:Landroid/content/Context;

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v0, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method private decode([BII)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez v12, :cond_0

    mul-int v12, p2, p3

    int-to-double v12, v12

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v12, v14

    move-object/from16 v0, p1

    array-length v14, v0

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    :cond_0
    return-void

    :cond_1
    mul-int v12, p2, p3

    new-array v7, v12, [B

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    const/4 v10, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    mul-int v12, v10, p3

    add-int v12, v12, p3

    sub-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x1

    mul-int v13, v11, p2

    add-int/2addr v13, v10

    aget-byte v13, p1, v13

    aput-byte v13, v7, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    move/from16 v9, p2

    move/from16 p2, p3

    move/from16 p3, v9

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    :cond_4
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v12, :cond_5

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v13

    if-nez v3, :cond_6

    const/4 v12, 0x1

    :goto_2
    move/from16 v0, p2

    invoke-virtual {v13, v7, v0, v9, v12}, Lcom/android/zxing/QRCodeManager;->buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v12, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v12, v8}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :goto_3
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v12, :cond_7

    return-void

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_3

    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v13}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v12

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v12

    const v13, 0x7f0a0007

    invoke-virtual {v12, v13, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v12, :cond_9

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v12

    const v13, 0x7f0a0009

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/zxing/DecodeHandler;->decode([BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0005
        :pswitch_0
    .end packed-switch
.end method
