.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x700

    .line 508
    new-array v1, v3, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 512
    return-void

    .line 510
    :cond_0
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 554
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 556
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 727
    const/16 v0, 0x700

    if-lt p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 4

    .prologue
    const/16 v3, 0x3b

    .line 868
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 869
    .local v0, "initialCharIndex":I
    :goto_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v1, :cond_1

    .line 878
    :cond_0
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 879
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 880
    const/16 v1, 0xd

    return v1

    .line 870
    :cond_1
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 871
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2

    .line 874
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 872
    :cond_2
    const/16 v1, 0xc

    return v1
.end method

.method private skipEntityForward()B
    .locals 3

    .prologue
    .line 853
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-lt v0, v1, :cond_1

    .line 854
    :goto_0
    const/16 v0, 0xc

    return v0

    .line 853
    :cond_1
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v1, v0

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipTagBackward()B
    .locals 5

    .prologue
    const/16 v4, 0x3e

    .line 825
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 826
    .local v0, "initialCharIndex":I
    :cond_0
    :goto_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v2, :cond_2

    .line 842
    :cond_1
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 843
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 844
    const/16 v2, 0xd

    return v2

    .line 827
    :cond_2
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 828
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_5

    .line 832
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v4, :cond_1

    .line 835
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_6

    .line 837
    :cond_3
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 838
    .local v1, "quote":C
    :cond_4
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 830
    .end local v1    # "quote":C
    :cond_5
    const/16 v2, 0xc

    return v2

    .line 835
    :cond_6
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 5

    .prologue
    .line 796
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 797
    .local v0, "initialCharIndex":I
    :cond_0
    :goto_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-lt v2, v3, :cond_1

    .line 810
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 811
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 812
    const/16 v2, 0xd

    return v2

    .line 798
    :cond_1
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 799
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4

    .line 803
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_5

    .line 805
    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 806
    .local v1, "quote":C
    :cond_3
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v1, :cond_3

    goto :goto_0

    .line 801
    .end local v1    # "quote":C
    :cond_4
    const/16 v2, 0xc

    return v2

    .line 803
    :cond_5
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 4

    .prologue
    .line 770
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 771
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 776
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 777
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 778
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-nez v2, :cond_2

    .line 786
    :cond_0
    :goto_0
    return v1

    .line 772
    .end local v1    # "dirType":B
    :cond_1
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 773
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 774
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    return v2

    .line 780
    .end local v0    # "codePoint":I
    .restart local v1    # "dirType":B
    :cond_2
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_3

    .line 782
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 783
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_0

    .line 781
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 4

    .prologue
    .line 740
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 741
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 747
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 748
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-nez v2, :cond_2

    .line 756
    :cond_0
    :goto_0
    return v1

    .line 742
    .end local v1    # "dirType":B
    :cond_1
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 743
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    return v2

    .line 750
    .end local v0    # "codePoint":I
    .restart local v1    # "dirType":B
    :cond_2
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_3

    .line 752
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 753
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_0

    .line 751
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 570
    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 573
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 574
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    :pswitch_0
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-lt v3, v4, :cond_1

    .line 616
    :cond_0
    if-eqz v2, :cond_4

    .line 623
    if-nez v1, :cond_5

    .line 630
    :goto_1
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v3, :cond_6

    .line 652
    return v5

    .line 574
    :cond_1
    if-nez v2, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 609
    :pswitch_1
    move v2, v0

    goto :goto_0

    .line 578
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 579
    const/4 v1, -0x1

    goto :goto_0

    .line 583
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 584
    const/4 v1, 0x1

    goto :goto_0

    .line 587
    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    .line 591
    const/4 v1, 0x0

    goto :goto_0

    .line 596
    :pswitch_5
    if-eqz v0, :cond_2

    .line 599
    move v2, v0

    goto :goto_0

    .line 597
    :cond_2
    return v6

    .line 603
    :pswitch_6
    if-eqz v0, :cond_3

    .line 606
    move v2, v0

    goto :goto_0

    .line 604
    :cond_3
    return v7

    .line 619
    :cond_4
    return v5

    .line 625
    :cond_5
    return v1

    .line 631
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 634
    :pswitch_7
    if-eq v2, v0, :cond_7

    .line 637
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 635
    :cond_7
    return v6

    .line 641
    :pswitch_8
    if-eq v2, v0, :cond_8

    .line 644
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 642
    :cond_8
    return v7

    .line 647
    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 631
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 668
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 671
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v2, :cond_1

    .line 716
    return v3

    .line 672
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 710
    :pswitch_1
    if-nez v1, :cond_0

    .line 711
    move v1, v0

    goto :goto_0

    .line 674
    :pswitch_2
    if-eqz v0, :cond_2

    .line 677
    if-nez v1, :cond_0

    .line 678
    move v1, v0

    goto :goto_0

    .line 675
    :cond_2
    return v4

    .line 683
    :pswitch_3
    if-eq v1, v0, :cond_3

    .line 686
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 684
    :cond_3
    return v4

    .line 690
    :pswitch_4
    if-eqz v0, :cond_4

    .line 693
    if-nez v1, :cond_0

    .line 694
    move v1, v0

    goto :goto_0

    .line 691
    :cond_4
    return v5

    .line 699
    :pswitch_5
    if-eq v1, v0, :cond_5

    .line 702
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    :cond_5
    return v5

    .line 705
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
