.class public Lcom/android/camera/preferences/IconListPreference;
.super Lcom/android/camera/preferences/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mEnabled:Z

.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field private mSingleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Lcom/android/camera/preferences/IconListPreference;->mEnabled:Z

    sget-object v2, Lcom/android/camera/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/preferences/IconListPreference;->mSingleIconId:I

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/android/camera/IntArray;

    invoke-direct {v2}, Lcom/android/camera/IntArray;-><init>()V

    new-instance v4, Lcom/android/camera/IntArray;

    invoke-direct {v4}, Lcom/android/camera/IntArray;-><init>()V

    new-instance v3, Lcom/android/camera/IntArray;

    invoke-direct {v3}, Lcom/android/camera/IntArray;-><init>()V

    const/4 v1, 0x0

    array-length v5, v0

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Lcom/android/camera/IntArray;->add(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Lcom/android/camera/IntArray;->add(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v2, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    :cond_4
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    :cond_5
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    return-void
.end method

.method public getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/preferences/IconListPreference;->mEnabled:Z

    return v0
.end method

.method public getIconIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getImageIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    return-object v0
.end method

.method public getSingleIcon()I
    .locals 1

    iget v0, p0, Lcom/android/camera/preferences/IconListPreference;->mSingleIconId:I

    return v0
.end method
