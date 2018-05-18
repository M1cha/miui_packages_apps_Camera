.class public Lcom/android/camera/ui/V6RelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "V6RelativeLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public findChildrenById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOrientation(IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
