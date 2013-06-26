.class final Lcom/google/zxing/datamatrix/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter "count"
    .parameter "dataCodewords"

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    .line 158
    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    .line 159
    return-void
.end method

.method constructor <init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    return v0
.end method

.method getDataCodewords()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    return v0
.end method
