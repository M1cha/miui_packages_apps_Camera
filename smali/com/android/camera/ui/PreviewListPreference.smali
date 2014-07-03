.class public Lcom/android/camera/ui/PreviewListPreference;
.super Landroid/preference/ListPreference;
.source "PreviewListPreference.java"


# instance fields
.field private mDefaultValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/PreviewListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void
.end method

.method private findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 56
    .local v6, supportedValues:[Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    move-object v8, v9

    .line 68
    :cond_0
    :goto_0
    return-object v8

    .line 60
    :cond_1
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v7, v0, v3

    .line 61
    .local v7, sv:Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/CharSequence;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v8, v1, v2

    .line 62
    .local v8, v:Ljava/lang/CharSequence;
    if-eqz v7, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 61
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 60
    .end local v8           #v:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .end local v1           #arr$:[Ljava/lang/CharSequence;
    .end local v5           #len$:I
    .end local v7           #sv:Ljava/lang/CharSequence;
    :cond_4
    move-object v8, v9

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 73
    .local v4, oldEntries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 74
    .local v5, oldEntriyValues:[Ljava/lang/CharSequence;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v4

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 77
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 78
    aget-object v7, v4, v2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    aget-object v7, v5, v2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 83
    .local v6, size:I
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/PreviewListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 84
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 39
    .local v0, tv:Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entryValues"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
