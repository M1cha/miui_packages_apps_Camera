.class public Lcom/sensetime/stmobile/model/STMobile106;
.super Ljava/lang/Object;
.source "STMobile106.java"


# instance fields
.field ID:I

.field eye_dist:F

.field pitch:F

.field points_array:[Lcom/sensetime/stmobile/model/STPoint;

.field rect:Lcom/sensetime/stmobile/model/STRect;

.field roll:F

.field score:F

.field visibility_array:[F

.field yaw:F


# direct methods
.method public constructor <init>(Lcom/sensetime/stmobile/model/STRect;F[Lcom/sensetime/stmobile/model/STPoint;FFFFI)V
    .locals 2

    const/16 v1, 0x6a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Lcom/sensetime/stmobile/model/STPoint;

    iput-object v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->points_array:[Lcom/sensetime/stmobile/model/STPoint;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->visibility_array:[F

    iput-object p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->rect:Lcom/sensetime/stmobile/model/STRect;

    iput p2, p0, Lcom/sensetime/stmobile/model/STMobile106;->score:F

    iput-object p3, p0, Lcom/sensetime/stmobile/model/STMobile106;->points_array:[Lcom/sensetime/stmobile/model/STPoint;

    iput p4, p0, Lcom/sensetime/stmobile/model/STMobile106;->yaw:F

    iput p5, p0, Lcom/sensetime/stmobile/model/STMobile106;->pitch:F

    iput p6, p0, Lcom/sensetime/stmobile/model/STMobile106;->roll:F

    iput p7, p0, Lcom/sensetime/stmobile/model/STMobile106;->eye_dist:F

    iput p8, p0, Lcom/sensetime/stmobile/model/STMobile106;->ID:I

    return-void
.end method


# virtual methods
.method public getEye_dist()F
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->eye_dist:F

    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->ID:I

    return v0
.end method

.method public getPitch()F
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->pitch:F

    return v0
.end method

.method public getPoints_array()[Lcom/sensetime/stmobile/model/STPoint;
    .locals 1

    iget-object v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->points_array:[Lcom/sensetime/stmobile/model/STPoint;

    return-object v0
.end method

.method public getRect()Lcom/sensetime/stmobile/model/STRect;
    .locals 1

    iget-object v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->rect:Lcom/sensetime/stmobile/model/STRect;

    return-object v0
.end method

.method public getRoll()F
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->roll:F

    return v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->score:F

    return v0
.end method

.method public getVisibilityArray()[F
    .locals 1

    iget-object v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->visibility_array:[F

    return-object v0
.end method

.method public getYaw()F
    .locals 1

    iget v0, p0, Lcom/sensetime/stmobile/model/STMobile106;->yaw:F

    return v0
.end method

.method public setEye_dist(F)V
    .locals 0

    iput p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->eye_dist:F

    return-void
.end method

.method public setID(I)V
    .locals 0

    iput p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->ID:I

    return-void
.end method

.method public setPitch(F)V
    .locals 0

    iput p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->pitch:F

    return-void
.end method

.method public setPoints_array([Lcom/sensetime/stmobile/model/STPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->points_array:[Lcom/sensetime/stmobile/model/STPoint;

    return-void
.end method

.method public setRect(Lcom/sensetime/stmobile/model/STRect;)V
    .locals 0

    iput-object p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->rect:Lcom/sensetime/stmobile/model/STRect;

    return-void
.end method

.method public setRoll(F)V
    .locals 0

    iput p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->roll:F

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->score:F

    return-void
.end method

.method public setYaw(F)V
    .locals 0

    iput p1, p0, Lcom/sensetime/stmobile/model/STMobile106;->yaw:F

    return-void
.end method
