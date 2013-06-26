.class final Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

.field private final ecCodewords:I


# direct methods
.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V
    .locals 2
    .parameter "ecCodewords"
    .parameter "ecBlocks"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 131
    return-void
.end method

.method constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;)V
    .locals 2
    .parameter "ecCodewords"
    .parameter "ecBlocks1"
    .parameter "ecBlocks2"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 136
    return-void
.end method

.method constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    return-void
.end method


# virtual methods
.method getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    return-object v0
.end method

.method getECCodewords()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    return v0
.end method
