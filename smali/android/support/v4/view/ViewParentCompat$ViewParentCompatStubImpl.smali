.class Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "source"    # Landroid/view/View;
    .param p4, "changeType"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "consumed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 113
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 114
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 124
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "consumed"    # [I

    .prologue
    .line 105
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 108
    .end local p1    # "parent":Landroid/view/ViewParent;
    :goto_0
    return-void

    .line 106
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "dxConsumed"    # I
    .param p4, "dyConsumed"    # I
    .param p5, "dxUnconsumed"    # I
    .param p6, "dyUnconsumed"    # I

    .prologue
    .line 96
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 97
    check-cast v0, Landroid/support/v4/view/NestedScrollingParent;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "nestedScrollAxes"    # I

    .prologue
    .line 80
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 84
    .end local p1    # "parent":Landroid/view/ViewParent;
    :goto_0
    return-void

    .line 81
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "nestedScrollAxes"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 71
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 88
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-nez v0, :cond_0

    .line 91
    .end local p1    # "parent":Landroid/view/ViewParent;
    :goto_0
    return-void

    .line 89
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 63
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 64
    const/4 v1, 0x1

    return v1

    .line 59
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
