.class public Lcom/sensetime/stmobile/STHumanAction;
.super Ljava/lang/Object;
.source "STHumanAction.java"


# instance fields
.field public backGroundRet:I

.field public faceCount:I

.field public faces:[Lcom/sensetime/stmobile/model/STMobileFaceAction;

.field public handCount:I

.field public hands:[Lcom/sensetime/stmobile/model/STMobileHandAction;

.field public image:Lcom/sensetime/stmobile/model/STImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileFaces()[Lcom/sensetime/stmobile/model/STMobile106;
    .locals 3

    iget v2, p0, Lcom/sensetime/stmobile/STHumanAction;->faceCount:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget v2, p0, Lcom/sensetime/stmobile/STHumanAction;->faceCount:I

    new-array v0, v2, [Lcom/sensetime/stmobile/model/STMobile106;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sensetime/stmobile/STHumanAction;->faceCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sensetime/stmobile/STHumanAction;->faces:[Lcom/sensetime/stmobile/model/STMobileFaceAction;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sensetime/stmobile/model/STMobileFaceAction;->face:Lcom/sensetime/stmobile/model/STMobile106;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public replaceMobile106([Lcom/sensetime/stmobile/model/STMobile106;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/sensetime/stmobile/STHumanAction;->faces:[Lcom/sensetime/stmobile/model/STMobileFaceAction;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sensetime/stmobile/STHumanAction;->faceCount:I

    array-length v2, p1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sensetime/stmobile/STHumanAction;->faces:[Lcom/sensetime/stmobile/model/STMobileFaceAction;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iput-object v2, v1, Lcom/sensetime/stmobile/model/STMobileFaceAction;->face:Lcom/sensetime/stmobile/model/STMobile106;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method
