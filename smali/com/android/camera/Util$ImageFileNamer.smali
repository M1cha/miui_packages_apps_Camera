.class Lcom/android/camera/Util$ImageFileNamer;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public generateName(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v6, 0x3e8

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iget-object v2, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    div-long v2, p1, v6

    iget-wide v4, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iput-wide p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
