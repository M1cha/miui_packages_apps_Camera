.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 48
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    return v1

    .line 234
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    return v1

    .line 251
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 190
    :cond_1
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_0

    .line 191
    if-eqz p1, :cond_4

    .line 192
    :cond_2
    const/4 v0, 0x0

    .line 193
    .local v0, "startX":I
    const/4 v1, 0x0

    .line 194
    .local v1, "startY":I
    if-nez p4, :cond_5

    .line 200
    :goto_1
    if-eqz p3, :cond_6

    .line 206
    :goto_2
    aput v2, p3, v2

    .line 207
    aput v2, p3, v3

    .line 208
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 210
    if-nez p4, :cond_8

    .line 215
    :goto_3
    aget v4, p3, v2

    if-eqz v4, :cond_9

    :cond_3
    move v2, v3

    :goto_4
    return v2

    .line 191
    .end local v0    # "startX":I
    .end local v1    # "startY":I
    :cond_4
    if-nez p2, :cond_2

    .line 216
    if-eqz p4, :cond_0

    .line 217
    aput v2, p4, v2

    .line 218
    aput v2, p4, v3

    goto :goto_0

    .line 195
    .restart local v0    # "startX":I
    .restart local v1    # "startY":I
    :cond_5
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 196
    aget v0, p4, v2

    .line 197
    aget v1, p4, v3

    goto :goto_1

    .line 201
    :cond_6
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-eqz v4, :cond_7

    .line 204
    :goto_5
    iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    goto :goto_2

    .line 202
    :cond_7
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    goto :goto_5

    .line 211
    :cond_8
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 212
    aget v4, p4, v2

    sub-int/2addr v4, v0

    aput v4, p4, v2

    .line 213
    aget v4, p4, v3

    sub-int/2addr v4, v1

    aput v4, p4, v3

    goto :goto_3

    .line 215
    :cond_9
    aget v4, p3, v3

    if-nez v4, :cond_3

    goto :goto_4
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v8

    .line 152
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 153
    if-eqz p1, :cond_3

    .line 154
    :cond_2
    const/4 v6, 0x0

    .line 155
    .local v6, "startX":I
    const/4 v7, 0x0

    .line 156
    .local v7, "startY":I
    if-nez p5, :cond_4

    .line 162
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 165
    if-nez p5, :cond_5

    .line 170
    :goto_2
    return v9

    .line 153
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :cond_3
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 171
    if-eqz p5, :cond_0

    .line 173
    aput v8, p5, v8

    .line 174
    aput v8, p5, v9

    goto :goto_0

    .line 157
    .restart local v6    # "startX":I
    .restart local v7    # "startY":I
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 158
    aget v6, p5, v8

    .line 159
    aget v7, p5, v9

    goto :goto_1

    .line 166
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 167
    aget v0, p5, v8

    sub-int/2addr v0, v6

    aput v0, p5, v8

    .line 168
    aget v0, p5, v9

    sub-int/2addr v0, v7

    aput v0, p5, v9

    goto :goto_2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-nez v0, :cond_0

    .line 63
    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 64
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 5
    .param p1, "axes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    :cond_0
    return v3

    .line 107
    :cond_1
    return v4

    .line 110
    :cond_2
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 111
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 112
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 113
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 118
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_4

    .line 121
    :goto_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_3
    iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 115
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 116
    return v4

    :cond_4
    move-object v0, v1

    .line 119
    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method public stopNestedScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 137
    iput-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    goto :goto_0
.end method
