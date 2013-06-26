.class public Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupWhiteBalance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$ShowKViewCallBack;
    }
.end annotation


# instance fields
.field private mShowKViewCallBack:Lcom/android/camera/ui/GridSettingPopupWhiteBalance$ShowKViewCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 13
    .parameter "preference"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 32
    .local v2, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 33
    .local v7, entries:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v9

    .line 34
    .local v9, iconIds:[I
    if-nez v9, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v9

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

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

    .line 56
    .end local v10           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    const v4, 0x7f040013

    new-array v5, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "image"

    aput-object v6, v5, v1

    const-string v1, "text"

    aput-object v1, v5, v11

    new-array v6, v12, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 60
    .local v0, listItemAdapter:Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v11}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->reloadPreference()V

    .line 63
    return-void

    .line 56
    :array_0
    .array-data 0x4
        0x38t 0x0t 0xct 0x7ft
        0x39t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public setShowKViewCallBack(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$ShowKViewCallBack;)V
    .locals 0
    .parameter "showKViewCallBack"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mShowKViewCallBack:Lcom/android/camera/ui/GridSettingPopupWhiteBalance$ShowKViewCallBack;

    .line 67
    return-void
.end method
