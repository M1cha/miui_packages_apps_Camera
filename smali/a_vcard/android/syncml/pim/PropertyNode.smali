.class public La_vcard/android/syncml/pim/PropertyNode;
.super Ljava/lang/Object;
.source "PropertyNode.java"


# instance fields
.field public paramMap:La_vcard/android/content/ContentValues;

.field public paramMap_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propGroupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propName:Ljava/lang/String;

.field public propValue:Ljava/lang/String;

.field public propValue_bytes:[B

.field public propValue_vector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 62
    new-instance v0, La_vcard/android/content/ContentValues;

    invoke-direct {v0}, La_vcard/android/content/ContentValues;-><init>()V

    iput-object v0, p0, La_vcard/android/syncml/pim/PropertyNode;->paramMap:La_vcard/android/content/ContentValues;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La_vcard/android/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    instance-of v3, p1, La_vcard/android/syncml/pim/PropertyNode;

    if-nez v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 110
    check-cast v0, La_vcard/android/syncml/pim/PropertyNode;

    .line 112
    .local v0, node:La_vcard/android/syncml/pim/PropertyNode;
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->paramMap:La_vcard/android/content/ContentValues;

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->paramMap:La_vcard/android/content/ContentValues;

    invoke-virtual {v3, v4}, La_vcard/android/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    iget-object v4, v0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v3, v0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", paramMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->paramMap:La_vcard/android/content/ContentValues;

    invoke-virtual {v1}, La_vcard/android/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", propmMap_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", propGroupSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 152
    const-string v1, ", propValue_vector size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v1, :cond_1

    .line 156
    const-string v1, ", propValue_bytes size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    const-string v1, ", propValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, La_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
