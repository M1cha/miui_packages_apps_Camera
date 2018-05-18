.class public Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "GridSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of v1, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v1, v2, v2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/ui/GridSettingPopup;->updateItemView(ILandroid/view/View;)V

    return-object v0
.end method
