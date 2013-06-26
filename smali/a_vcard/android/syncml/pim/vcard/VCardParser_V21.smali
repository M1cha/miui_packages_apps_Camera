.class public La_vcard/android/syncml/pim/vcard/VCardParser_V21;
.super Ljava/lang/Object;
.source "VCardParser_V21.java"


# static fields
.field private static final sAvailableEncodingV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailablePropertyNameV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownValueSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBuilder:La_vcard/android/syncml/pim/VBuilder;

.field private mCanceled:Z

.field protected mEncoding:Ljava/lang/String;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Ljava/io/BufferedReader;

.field private mTimeEndProperty:J

.field private mTimeEndRecord:J

.field private mTimeHandlePropertyValue1:J

.field private mTimeHandlePropertyValue2:J

.field private mTimeHandlePropertyValue3:J

.field private mTimeParseItem1:J

.field private mTimeParseItem2:J

.field private mTimeParseItem3:J

.field private mTimeParseItems:J

.field private mTimeStartProperty:J

.field private mTimeStartRecord:J

.field private mTimeTotal:J

.field protected mWarningValueMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final sDefaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOM"

    aput-object v2, v1, v4

    const-string v2, "INTL"

    aput-object v2, v1, v5

    const-string v2, "POSTAL"

    aput-object v2, v1, v6

    const-string v2, "PARCEL"

    aput-object v2, v1, v7

    const-string v2, "HOME"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FAX"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MSG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "AOL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "APPLELINK"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ATTMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CIS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "EWORLD"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "X400"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "GIF"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CGM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "WMF"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "MET"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "PMB"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DIB"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "PICT"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "TIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "PDF"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "PS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "JPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "QTIME"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "MPEG2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "AVI"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "WAVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "AIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "PCM"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "X509"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "PGP"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "INLINE"

    aput-object v2, v1, v4

    const-string v2, "URL"

    aput-object v2, v1, v5

    const-string v2, "CONTENT-ID"

    aput-object v2, v1, v6

    const-string v2, "CID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    const-string v2, "BASE64"

    aput-object v2, v1, v7

    const-string v2, "B"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    .line 76
    iput-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 78
    const-string v0, "8BIT"

    iput-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 112
    return-void
.end method

.method private isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 956
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 957
    :cond_1
    const/4 v0, 0x1

    .line 959
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 10
    .parameter "firstReading"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_2

    .line 203
    iget v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v6, :cond_2

    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v6, :cond_2

    .line 205
    invoke-virtual {p0, v0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v4

    .line 208
    .restart local v1       #i:I
    :cond_1
    const/4 v0, 0x1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p0, v0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    iget-object v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v6, :cond_3

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, start:J
    iget-object v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const-string v7, "VCARD"

    invoke-interface {v6, v7}, La_vcard/android/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 220
    iget-wide v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    .line 222
    .end local v2           #start:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    .restart local v2       #start:J
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseItems()V

    .line 224
    iget-wide v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItems:J

    .line 225
    invoke-virtual {p0, v5, v4}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 226
    iget-object v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v4, :cond_4

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 228
    iget-object v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v4}, La_vcard/android/syncml/pim/VBuilder;->endRecord()V

    .line 229
    iget-wide v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    :cond_4
    move v4, v5

    .line 231
    goto :goto_1
.end method


# virtual methods
.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :goto_0
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 751
    new-instance v2, La_vcard/android/syncml/pim/vcard/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 757
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 186
    :cond_0
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 188
    new-instance v1, La_vcard/android/syncml/pim/vcard/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 190
    return-object v0
.end method

.method protected getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 711
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 713
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 714
    .local v2, pos:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :goto_0
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 723
    new-instance v3, La_vcard/android/syncml/pim/vcard/VCardException;

    const-string v4, "File ended during parsing quoted-printable String"

    invoke-direct {v3, v4}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 726
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 728
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 729
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 731
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 734
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    .end local p1
    :cond_4
    return-object p1
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, La_vcard/android/syncml/pim/vcard/VCardException;

    const-string v1, "AGENT Property is not supported."

    invoke-direct {v0, v1}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 644
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p2}, La_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 648
    :cond_0
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .parameter "charsetval"

    .prologue
    .line 600
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 604
    :cond_0
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0, p1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->isValidEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    :cond_0
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 589
    :cond_1
    iput-object p1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 593
    return-void

    .line 591
    :cond_2
    new-instance v0, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 613
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 615
    new-instance v4, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 618
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 619
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 620
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 621
    new-instance v4, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_2
    array-length v4, v2

    if-le v4, v6, :cond_4

    .line 626
    aget-object v3, v2, v6

    .line 627
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 628
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 629
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 630
    new-instance v4, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_4
    iget-object v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v4, :cond_5

    .line 635
    iget-object v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, La_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 636
    iget-object v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v4, p1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 638
    :cond_5
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 786
    iget-object v7, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v8, "QUOTED-PRINTABLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 787
    invoke-virtual {p0, p2}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 790
    :cond_0
    iget-object v7, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v7, :cond_5

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 793
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 795
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 796
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 797
    .local v1, ch:C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_2

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_2

    .line 798
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 799
    .local v5, nextCh:C
    invoke-virtual {p0, v5}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->maybeUnescape(C)Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, unescapedString:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 801
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    add-int/lit8 v2, v2, 0x1

    .line 795
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 804
    .restart local v5       #nextCh:C
    .restart local v6       #unescapedString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 806
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :cond_2
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_3

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 810
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 813
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v7, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v7, v4}, La_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 816
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 524
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 526
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-virtual {p0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    .line 546
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 530
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    invoke-virtual {p0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    invoke-virtual {p0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    invoke-virtual {p0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 537
    invoke-virtual {p0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    invoke-virtual {p0, v0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_5
    new-instance v3, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 544
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 655
    .local v2, start:J
    invoke-virtual {p0, p2}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, result:Ljava/lang/String;
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_0

    .line 657
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, La_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 661
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-wide v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    .line 696
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 662
    .end local v2           #start:J
    :cond_1
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "BASE64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 664
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 668
    .restart local v2       #start:J
    :try_start_0
    invoke-virtual {p0, p2}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .restart local v1       #result:Ljava/lang/String;
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_3

    .line 670
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, La_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v1           #result:Ljava/lang/String;
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-wide v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, error:Ljava/lang/OutOfMemoryError;
    const-string v5, "VCardParser_V21"

    const-string v6, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v5, v6}, La_vcard/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_3

    .line 677
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, La_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    goto :goto_1

    .line 682
    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    .end local v2           #start:J
    :cond_4
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "7BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "8BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 685
    const-string v5, "VCardParser_V21"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The encoding unsupported by vCard spec: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, La_vcard/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 689
    .restart local v2       #start:J
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_6

    .line 690
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, La_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 694
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-wide v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 4
    .parameter "ptypeval"

    .prologue
    .line 552
    move-object v0, p1

    .line 553
    .local v0, upperTypeValue:Ljava/lang/String;
    sget-object v1, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    const-string v1, "VCardParser_V21"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type unsupported by vCard 2.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La_vcard/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iget-object v1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const-string v2, "TYPE"

    invoke-interface {v1, v2}, La_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v1, v0}, La_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 562
    :cond_1
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 3
    .parameter "pvalueval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    :cond_0
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, La_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 577
    :cond_1
    return-void

    .line 575
    :cond_2
    new-instance v0, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isValidEncoding(Ljava/lang/String;)Z
    .locals 2
    .parameter "encoding"

    .prologue
    .line 167
    sget-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 154
    sget-object v0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La_vcard/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescape(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 860
    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 861
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 849
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;La_vcard/android/syncml/pim/VBuilder;)Z
    .locals 6
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 899
    new-instance v2, La_vcard/android/syncml/pim/vcard/CustomBufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, La_vcard/android/syncml/pim/vcard/CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    .line 901
    iput-object p3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 904
    .local v0, start:J
    iget-object v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v2, :cond_0

    .line 905
    iget-object v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v2}, La_vcard/android/syncml/pim/VBuilder;->start()V

    .line 907
    :cond_0
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseVCardFile()V

    .line 908
    iget-object v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v2, :cond_1

    .line 909
    iget-object v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v2}, La_vcard/android/syncml/pim/VBuilder;->end()V

    .line 911
    :cond_1
    iget-wide v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    .line 913
    const/4 v2, 0x1

    return v2
.end method

.method protected parseItem()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 381
    const-string v8, "8BIT"

    iput-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 386
    .local v4, start:J
    invoke-virtual {p0, v0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 423
    :goto_0
    return v6

    .line 390
    :cond_0
    array-length v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 391
    new-instance v6, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 393
    :cond_1
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v6

    .line 396
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    .line 398
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 401
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 402
    invoke-virtual {p0, v1, v3}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-wide v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    move v6, v7

    .line 404
    goto :goto_0

    .line 405
    :cond_3
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 406
    invoke-virtual {p0, v3}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v7

    .line 407
    goto :goto_0

    .line 408
    :cond_4
    invoke-virtual {p0, v1}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 409
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 410
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 411
    new-instance v6, La_vcard/android/syncml/pim/vcard/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, La_vcard/android/syncml/pim/vcard/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 413
    :cond_5
    new-instance v6, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 415
    :cond_6
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 417
    new-instance v6, La_vcard/android/syncml/pim/vcard/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, La_vcard/android/syncml/pim/vcard/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 420
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 421
    invoke-virtual {p0, v1, v3}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-wide v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    move v6, v7

    .line 423
    goto/16 :goto_0

    .line 426
    :cond_8
    new-instance v6, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, ended:Z
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v3, :cond_0

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 347
    .local v1, start:J
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v3}, La_vcard/android/syncml/pim/VBuilder;->startProperty()V

    .line 348
    iget-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 350
    .end local v1           #start:J
    :cond_0
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 351
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 353
    .restart local v1       #start:J
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v3}, La_vcard/android/syncml/pim/VBuilder;->endProperty()V

    .line 354
    iget-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    .line 357
    .end local v1           #start:J
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 359
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v3, :cond_2

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 361
    .restart local v1       #start:J
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v3}, La_vcard/android/syncml/pim/VBuilder;->startProperty()V

    .line 362
    iget-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 364
    .end local v1           #start:J
    :cond_2
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 365
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 367
    .restart local v1       #start:J
    iget-object v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v3}, La_vcard/android/syncml/pim/VBuilder;->endProperty()V

    .line 368
    iget-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    goto :goto_0

    .line 371
    .end local v1           #start:J
    :cond_3
    return-void
.end method

.method protected parseVCardFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x1

    .line 128
    .local v0, firstReading:Z
    :goto_0
    iget-boolean v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    iget v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_2

    .line 138
    const/4 v2, 0x1

    .line 139
    .local v2, useCache:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v3, :cond_2

    .line 140
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 141
    const/4 v2, 0x0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v1           #i:I
    .end local v2           #useCache:Z
    :cond_1
    invoke-direct {p0, v0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_2
    return-void
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    :cond_0
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 284
    :goto_0
    return v3

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 251
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 277
    .local v0, length:I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 280
    goto :goto_0

    .line 281
    :cond_2
    if-nez p1, :cond_4

    .line 282
    iget v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v4, :cond_3

    .line 283
    iput-object v1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_3
    new-instance v3, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_4
    if-nez p1, :cond_0

    .line 293
    new-instance v3, La_vcard/android/syncml/pim/vcard/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .locals 5
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    .line 313
    iget-object v0, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 325
    .local v0, line:Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    :goto_1
    return-void

    .line 316
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 318
    new-instance v2, La_vcard/android/syncml/pim/vcard/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 330
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 331
    new-instance v2, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_4
    const/4 p1, 0x0

    .line 334
    if-nez p2, :cond_0

    goto :goto_1
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3b

    const/16 v12, 0x3a

    const/16 v11, 0x22

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 438
    .local v3, length:I
    const/4 v7, 0x0

    .line 439
    .local v7, state:I
    const/4 v4, 0x0

    .line 441
    .local v4, nameIndex:I
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 443
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_c

    .line 444
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 445
    .local v0, ch:C
    packed-switch v7, :pswitch_data_0

    .line 443
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :pswitch_0
    if-ne v0, v12, :cond_4

    .line 448
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 450
    iput-object p1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 451
    const/4 v6, 0x0

    .line 496
    .end local v5           #propertyName:Ljava/lang/String;
    .end local v6           #propertyNameAndValue:[Ljava/lang/String;
    :goto_2
    return-object v6

    .line 453
    .restart local v5       #propertyName:Ljava/lang/String;
    .restart local v6       #propertyNameAndValue:[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v8, :cond_2

    .line 454
    iget-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v8, v5}, La_vcard/android/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 456
    :cond_2
    aput-object v5, v6, v10

    .line 457
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_3

    .line 458
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    goto :goto_2

    .line 460
    :cond_3
    const-string v8, ""

    aput-object v8, v6, v9

    goto :goto_2

    .line 463
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_6

    .line 464
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, groupName:Ljava/lang/String;
    iget-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v8, :cond_5

    .line 466
    iget-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v8, v1}, La_vcard/android/syncml/pim/VBuilder;->propertyGroup(Ljava/lang/String;)V

    .line 468
    :cond_5
    add-int/lit8 v4, v2, 0x1

    .line 469
    goto :goto_1

    .end local v1           #groupName:Ljava/lang/String;
    :cond_6
    if-ne v0, v13, :cond_0

    .line 470
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 471
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 472
    iput-object p1, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 473
    const/4 v6, 0x0

    goto :goto_2

    .line 475
    :cond_7
    iget-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    if-eqz v8, :cond_8

    .line 476
    iget-object v8, p0, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:La_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v8, v5}, La_vcard/android/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 478
    :cond_8
    aput-object v5, v6, v10

    .line 479
    add-int/lit8 v4, v2, 0x1

    .line 480
    const/4 v7, 0x1

    .line 481
    goto :goto_1

    .line 484
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_1
    if-ne v0, v11, :cond_9

    .line 485
    const/4 v7, 0x2

    goto :goto_1

    .line 486
    :cond_9
    if-ne v0, v13, :cond_a

    .line 487
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 488
    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    .line 489
    :cond_a
    if-ne v0, v12, :cond_0

    .line 490
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, La_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 491
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_b

    .line 492
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    goto :goto_2

    .line 494
    :cond_b
    const-string v8, ""

    aput-object v8, v6, v9

    goto :goto_2

    .line 500
    :pswitch_2
    if-ne v0, v11, :cond_0

    .line 501
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 507
    .end local v0           #ch:C
    :cond_c
    new-instance v8, La_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, La_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
