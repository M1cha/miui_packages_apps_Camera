.class public Lcom/android/camera/ui/GridSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentIndex:I

.field protected mGridView:Landroid/widget/GridView;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "GridSettingPopup"

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mOrientation:I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GridSettingPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mOrientation:I

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 13
    .parameter "preference"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 32
    .local v2, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 33
    .local v7, entries:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v9

    .line 34
    .local v9, iconIds:[I
    if-nez v9, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v9

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v3, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_2

    .line 45
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v4, v7, v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    if-eqz v9, :cond_1

    const-string v1, "image"

    aget v4, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 51
    .end local v10           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    const v4, 0x7f040013

    new-array v5, v11, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v5, v12

    new-array v6, v11, [I

    const v1, 0x7f0c0038

    aput v1, v6, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 55
    .local v0, listItemAdapter:Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v11}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v1, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 96
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 102
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    .line 103
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 63
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "GridSettingPopup"

    const-string v1, "Invalid preference value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, v:Landroid/view/View;
    neg-int p1, p1

    .line 112
    if-ltz p1, :cond_2

    rem-int/lit16 p1, p1, 0x168

    .line 113
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 115
    instance-of v2, v1, Lcom/android/camera/ui/Rotatable;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 116
    check-cast v2, Lcom/android/camera/ui/Rotatable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    .end local v0           #i:I
    :cond_2
    rem-int/lit16 v2, p1, 0x168

    add-int/lit16 p1, v2, 0x168

    goto :goto_1

    .line 119
    .restart local v0       #i:I
    :cond_3
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mOrientation:I

    goto :goto_0
.end method
