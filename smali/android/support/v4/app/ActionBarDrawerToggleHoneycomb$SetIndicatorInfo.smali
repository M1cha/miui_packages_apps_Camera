.class Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const v12, 0x102002c

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/app/ActionBar;

    const-string/jumbo v9, "setHomeAsUpIndicator"

    invoke-virtual {v8, v9, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 108
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/app/ActionBar;

    const-string/jumbo v9, "setHomeActionContentDescription"

    invoke-virtual {v8, v9, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 118
    .local v3, "home":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 124
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 125
    .local v0, "childCount":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 130
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "first":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, "second":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v12, :cond_2

    move-object v6, v2

    .line 134
    .local v6, "up":Landroid/view/View;
    :goto_0
    instance-of v7, v6, Landroid/widget/ImageView;

    if-nez v7, :cond_3

    .line 138
    .end local v6    # "up":Landroid/view/View;
    :goto_1
    return-void

    .line 120
    .end local v0    # "childCount":I
    .end local v2    # "first":Landroid/view/View;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .end local v5    # "second":Landroid/view/View;
    :cond_0
    return-void

    .line 127
    .restart local v0    # "childCount":I
    .restart local v4    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .restart local v2    # "first":Landroid/view/View;
    .restart local v5    # "second":Landroid/view/View;
    :cond_2
    move-object v6, v5

    .line 132
    goto :goto_0

    .line 136
    .restart local v6    # "up":Landroid/view/View;
    :cond_3
    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "up":Landroid/view/View;
    iput-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    goto :goto_1
.end method
