.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ListView;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 33
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    .line 60
    iget-object v6, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 61
    .local v6, "target":Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 62
    .local v3, "itemCount":I
    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 67
    .local v0, "childCount":I
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 68
    .local v1, "firstPosition":I
    add-int v4, v1, v0

    .line 70
    .local v4, "lastPosition":I
    if-gtz p1, :cond_1

    .line 78
    if-ltz p1, :cond_4

    .line 89
    return v9

    .line 63
    .end local v0    # "childCount":I
    .end local v1    # "firstPosition":I
    .end local v4    # "lastPosition":I
    :cond_0
    return v9

    .line 72
    .restart local v0    # "childCount":I
    .restart local v1    # "firstPosition":I
    .restart local v4    # "lastPosition":I
    :cond_1
    if-ge v4, v3, :cond_3

    .line 92
    :cond_2
    const/4 v7, 0x1

    return v7

    .line 73
    :cond_3
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 74
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 75
    return v9

    .line 80
    .end local v5    # "lastView":Landroid/view/View;
    :cond_4
    if-gtz v1, :cond_2

    .line 81
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_2

    .line 83
    return v9
.end method

.method public scrollTargetBy(II)V
    .locals 5
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 37
    iget-object v3, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 38
    .local v3, "target":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 39
    .local v0, "firstPosition":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, p2

    .line 49
    .local v2, "newTop":I
    invoke-virtual {v3, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 50
    return-void

    .line 40
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "newTop":I
    :cond_0
    return-void

    .line 45
    .restart local v1    # "firstView":Landroid/view/View;
    :cond_1
    return-void
.end method
