.class public Lcom/android/camera/ui/PreviewListPreference;
.super Landroid/preference/ListPreference;
.source "PreviewListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;
    }
.end annotation


# instance fields
.field private mDefaultValues:[Ljava/lang/CharSequence;

.field private mExtraPaddingEnd:I

.field private mLabels:[Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/PreviewListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mExtraPaddingEnd:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/PreviewListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PreviewListPreference;->findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/android/camera/R$styleable;->PreviewListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mExtraPaddingEnd:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    array-length v6, v0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    array-length v7, p1

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v2, p1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_3
    return-object v9
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    array-length v4, v5

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v9, v6, v3

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_0

    aget-object v9, v5, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v6, v3

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_0

    aget-object v9, v7, v3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/PreviewListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v9, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    if-eqz v9, :cond_2

    new-array v9, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    iput-object v9, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    :cond_2
    return-void
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PreviewListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :cond_0
    return-object v1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f0a009c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

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

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    new-instance v0, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/camera/ui/PreviewListPreference$PreviewListAdapter;-><init>(Lcom/android/camera/ui/PreviewListPreference;Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
