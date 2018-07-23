.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$Op;,
        Landroid/support/v4/app/BackStackRecord$TransitionState;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final SUPPORTS_TRANSITIONS:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 354
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 355
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/BackStackRecord;
    .param p1, "x1"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/BackStackRecord;
    .param p1, "x1"    # Landroid/support/v4/util/ArrayMap;
    .param p2, "x2"    # Landroid/support/v4/app/BackStackRecord$TransitionState;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/BackStackRecord;->setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/BackStackRecord;
    .param p1, "x1"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "x2"    # Landroid/support/v4/app/Fragment;
    .param p3, "x3"    # Landroid/support/v4/app/Fragment;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/support/v4/util/ArrayMap;

    .prologue
    .line 188
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/BackStackRecord;->callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/BackStackRecord;
    .param p1, "x1"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    return-void
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 8
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v2, Landroid/support/v4/app/BackStackRecord$TransitionState;

    invoke-direct {v2, p0}, Landroid/support/v4/app/BackStackRecord$TransitionState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    .line 1024
    .local v2, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1026
    const/4 v6, 0x0

    .line 1028
    .local v6, "anyTransitionStarted":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 1037
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    .line 1046
    if-eqz v6, :cond_5

    .line 1050
    .end local v2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :goto_2
    return-object v2

    .line 1029
    .restart local v2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_0
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "containerId":I
    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1030
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1032
    :cond_1
    const/4 v6, 0x1

    goto :goto_3

    .line 1038
    .end local v1    # "containerId":I
    :cond_2
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1039
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1037
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1039
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    const/4 v6, 0x1

    goto :goto_4

    .line 1047
    .end local v1    # "containerId":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 778
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 779
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-nez v3, :cond_1

    .line 820
    return-void

    .line 776
    .end local v3    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    return-void

    .line 780
    .restart local v3    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_1
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 818
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 782
    :pswitch_0
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 785
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 786
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 798
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 787
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    const/4 v1, 0x0

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 788
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 789
    .local v2, "old":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_5

    .line 790
    :cond_4
    if-eq v2, v0, :cond_6

    .line 793
    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 787
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 789
    :cond_5
    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eq v4, v5, :cond_4

    goto :goto_3

    .line 791
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_3

    .line 802
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 805
    :pswitch_3
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 808
    :pswitch_4
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 811
    :pswitch_5
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 814
    :pswitch_6
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 1262
    if-nez p4, :cond_0

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1265
    .local v1, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :goto_0
    if-nez v1, :cond_1

    .line 1270
    :goto_1
    return-void

    .line 1262
    .end local v1    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :cond_0
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    goto :goto_0

    .line 1266
    .restart local v1    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1267
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1268
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1, v0, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method private static captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1081
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1085
    :goto_0
    return-object p0

    .line 1082
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 38
    .param p1, "containerId"    # I
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1132
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1133
    .local v6, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v6, :cond_2

    .line 1136
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1137
    .local v8, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 1139
    .local v9, "outFragment":Landroid/support/v4/app/Fragment;
    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/BackStackRecord;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 1140
    .local v12, "enterTransition":Ljava/lang/Object;
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/BackStackRecord;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1142
    .local v7, "sharedElementTransition":Ljava/lang/Object;
    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/support/v4/app/BackStackRecord;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v26

    .line 1143
    .local v26, "exitTransition":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1144
    .local v20, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v11, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v7, :cond_3

    .line 1164
    .end local v7    # "sharedElementTransition":Ljava/lang/Object;
    .end local v20    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :goto_0
    if-eqz v12, :cond_7

    .line 1169
    :cond_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .local v27, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-static {v0, v9, v1, v2, v4}, Landroid/support/v4/app/BackStackRecord;->captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v26

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 1187
    :cond_1
    :goto_1
    new-instance v15, Landroid/support/v4/app/BackStackRecord$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Landroid/support/v4/app/BackStackRecord$1;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V

    .line 1195
    .local v15, "viewRetriever":Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v21, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1198
    .local v21, "renamedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/16 v33, 0x1

    .line 1199
    .local v33, "allowOverlap":Z
    if-nez v8, :cond_a

    .line 1203
    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-static {v12, v0, v7, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v30

    .line 1206
    .local v30, "transition":Ljava/lang/Object;
    if-nez v30, :cond_c

    .line 1226
    :goto_3
    if-nez v30, :cond_d

    const/4 v4, 0x0

    :goto_4
    return v4

    .line 1134
    .end local v8    # "inFragment":Landroid/support/v4/app/Fragment;
    .end local v9    # "outFragment":Landroid/support/v4/app/Fragment;
    .end local v11    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "enterTransition":Ljava/lang/Object;
    .end local v15    # "viewRetriever":Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v21    # "renamedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v26    # "exitTransition":Ljava/lang/Object;
    .end local v27    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v30    # "transition":Ljava/lang/Object;
    .end local v33    # "allowOverlap":Z
    :cond_2
    const/4 v4, 0x0

    return v4

    .line 1146
    .restart local v7    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v8    # "inFragment":Landroid/support/v4/app/Fragment;
    .restart local v9    # "outFragment":Landroid/support/v4/app/Fragment;
    .restart local v11    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v12    # "enterTransition":Ljava/lang/Object;
    .restart local v20    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v26    # "exitTransition":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/BackStackRecord;->remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v20

    .line 1147
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1152
    if-nez p3, :cond_5

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object/from16 v34, v0

    .line 1155
    .local v34, "callback":Landroid/support/v4/app/SharedElementCallback;
    :goto_5
    if-nez v34, :cond_6

    :goto_6
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1160
    invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 1148
    .end local v34    # "callback":Landroid/support/v4/app/SharedElementCallback;
    :cond_4
    const/4 v7, 0x0

    .line 1149
    const/16 v20, 0x0

    goto :goto_0

    .line 1152
    :cond_5
    iget-object v0, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object/from16 v34, v0

    goto :goto_5

    .line 1156
    .restart local v34    # "callback":Landroid/support/v4/app/SharedElementCallback;
    :cond_6
    new-instance v36, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    .local v36, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1158
    .local v37, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    .line 1164
    .end local v7    # "sharedElementTransition":Ljava/lang/Object;
    .end local v20    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v34    # "callback":Landroid/support/v4/app/SharedElementCallback;
    .end local v36    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    if-nez v7, :cond_0

    if-nez v26, :cond_0

    .line 1166
    const/4 v4, 0x0

    return v4

    .line 1174
    .restart local v27    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    if-eqz v20, :cond_1

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    .line 1176
    .local v35, "epicenterView":Landroid/view/View;
    if-eqz v35, :cond_1

    .line 1177
    if-nez v26, :cond_9

    .line 1180
    :goto_7
    if-eqz v7, :cond_1

    .line 1181
    move-object/from16 v0, v35

    invoke-static {v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto/16 :goto_1

    .line 1178
    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_7

    .line 1200
    .end local v35    # "epicenterView":Landroid/view/View;
    .restart local v15    # "viewRetriever":Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    .restart local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v21    # "renamedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v33    # "allowOverlap":Z
    :cond_a
    if-nez p3, :cond_b

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v33

    :goto_8
    goto/16 :goto_2

    :cond_b
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v33

    goto :goto_8

    .line 1207
    .restart local v30    # "transition":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v18, v0

    move-object v13, v7

    move-object v14, v6

    move-object/from16 v22, v11

    invoke-static/range {v12 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1219
    move-object/from16 v0, v30

    invoke-static {v6, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1221
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v22, v6

    move-object/from16 v24, v12

    move-object/from16 v25, v19

    move-object/from16 v28, v7

    move-object/from16 v29, v11

    move-object/from16 v32, v21

    invoke-static/range {v22 .. v32}, Landroid/support/v4/app/FragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 1226
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_4
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 414
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 416
    if-nez p3, :cond_0

    .line 425
    :goto_0
    if-nez p1, :cond_3

    .line 434
    :goto_1
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 435
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 436
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 437
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 438
    return-void

    .line 417
    .end local v0    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 422
    :cond_1
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_2
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :cond_3
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-nez v1, :cond_5

    .line 431
    :cond_4
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_1

    .line 426
    :cond_5
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v1, p1, :cond_4

    .line 427
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1370
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1389
    :cond_0
    return-void

    .line 1371
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1372
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1373
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 1371
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    :cond_3
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v2, p2, :cond_2

    .line 1375
    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_4

    .line 1382
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p3, v2, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1384
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1376
    :cond_4
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1377
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1379
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "containerId"    # I
    .param p4, "transition"    # Ljava/lang/Object;

    .prologue
    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Landroid/support/v4/app/BackStackRecord$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord$3;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1367
    return-void
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1054
    if-eqz p0, :cond_0

    .line 1057
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1055
    :cond_0
    return-object v0

    .line 1057
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1062
    if-eqz p0, :cond_0

    .line 1065
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_0
    return-object v0

    .line 1065
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isBack"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1071
    if-nez p0, :cond_1

    .line 1072
    :cond_0
    return-object v0

    .line 1071
    :cond_1
    if-eqz p1, :cond_0

    .line 1074
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1342
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1343
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-object v0

    .line 1344
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1345
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1346
    if-nez p3, :cond_2

    .line 1350
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1347
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    goto :goto_0
.end method

.method private mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1286
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/BackStackRecord;->mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1290
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-nez p2, :cond_0

    .line 1297
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-nez v1, :cond_2

    .line 1301
    :goto_0
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1303
    :goto_1
    return-object v0

    .line 1291
    :cond_0
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-nez v1, :cond_1

    .line 1295
    :goto_2
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_1

    .line 1292
    :cond_1
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_2

    .line 1298
    :cond_2
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
    .locals 10
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "sceneRoot"    # Landroid/view/View;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p5, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p6, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Landroid/support/v4/app/BackStackRecord$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/BackStackRecord$2;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1258
    return-void
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1319
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1320
    .local v2, "remappedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1321
    .local v1, "numKeys":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1327
    return-object v2

    .line 1317
    .end local v0    # "i":I
    .end local v1    # "numKeys":I
    .end local v2    # "remappedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_0
    return-object p2

    .line 1322
    .restart local v0    # "i":I
    .restart local v1    # "numKeys":I
    .restart local v2    # "remappedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1323
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1321
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1090
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1091
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1101
    :goto_0
    if-nez p3, :cond_2

    .line 1108
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-nez v1, :cond_4

    .line 1112
    :goto_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1115
    :goto_2
    return-object v0

    .line 1092
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1093
    if-nez p3, :cond_1

    .line 1096
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-nez v1, :cond_3

    .line 1106
    :goto_3
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_2

    .line 1103
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_3

    .line 1109
    :cond_4
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 7
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1417
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1418
    .local v0, "count":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1431
    return-void

    .line 1419
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1420
    .local v3, "source":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1421
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1422
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_2

    .line 1418
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1423
    :cond_2
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, "target":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 1427
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v6, v4, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1425
    :cond_3
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v6, v3, v4}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 1273
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1277
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1278
    iget-object v1, p2, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    iput-object v0, v1, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;->epicenter:Landroid/view/View;

    goto :goto_0
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    if-nez p1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 748
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 750
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    if-nez p2, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 758
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p0, "overrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    if-eqz p2, :cond_0

    .line 1394
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1400
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1395
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1396
    :cond_3
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1397
    return-void
.end method

.method private setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1436
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1445
    return-void

    .line 1437
    :cond_0
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1438
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 1439
    .local v3, "target":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 1442
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v3, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1440
    :cond_1
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v2, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1406
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1413
    :cond_0
    return-void

    .line 1407
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1408
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1409
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1410
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-static {v3, v1, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 405
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 410
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 400
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/BackStackRecord$Op;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 389
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    .line 391
    :goto_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 392
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 393
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 394
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 395
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 396
    return-void

    .line 385
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 518
    sget-boolean v1, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-nez v1, :cond_0

    .line 532
    :goto_0
    return-object p0

    .line 519
    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 524
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 529
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 546
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 547
    return-object p0

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 490
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 491
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 492
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 493
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 495
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 5
    .param p1, "amt"    # I

    .prologue
    .line 588
    iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_0

    .line 591
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_1

    .line 593
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 594
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_1
    if-nez v1, :cond_2

    .line 610
    return-void

    .line 589
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    return-void

    .line 591
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bump nesting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    .restart local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_2
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_5

    .line 600
    :cond_3
    :goto_2
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 608
    :cond_4
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_1

    .line 596
    :cond_5
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 597
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v4, v4, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 601
    :cond_6
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_4

    .line 602
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 603
    .local v2, "r":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 604
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_7

    .line 601
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 604
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 837
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-nez v1, :cond_1

    .line 869
    return-void

    .line 834
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    return-void

    .line 838
    .restart local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_1
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 867
    :goto_1
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 840
    :pswitch_0
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 843
    :pswitch_1
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 848
    :cond_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 844
    :cond_3
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 845
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 844
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 851
    .end local v0    # "i":I
    :pswitch_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 854
    :pswitch_3
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 857
    :pswitch_4
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 860
    :pswitch_5
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 863
    :pswitch_6
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 5
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v4, 0x0

    .line 621
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-nez v2, :cond_0

    .line 622
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    .line 628
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 629
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v2, :cond_2

    .line 632
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 634
    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 635
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v2

    .line 621
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Commit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v2, "FragmentManager"

    invoke-direct {v0, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 626
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    invoke-virtual {p0, v2, v4, v1, v4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 630
    .end local v0    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_1
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 481
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 482
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 483
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 484
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 486
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    .line 559
    iput-boolean v1, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 560
    return-object p0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 261
    if-nez p3, :cond_1

    .line 297
    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v5, :cond_b

    .line 351
    :cond_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string/jumbo v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-nez v5, :cond_6

    .line 271
    :goto_1
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-eqz v5, :cond_7

    .line 272
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :goto_2
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-eqz v5, :cond_8

    .line 278
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :goto_3
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v5, :cond_9

    .line 284
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :goto_4
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v5, :cond_a

    .line 290
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 266
    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :cond_7
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 277
    :cond_8
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-nez v5, :cond_3

    goto :goto_3

    .line 283
    :cond_9
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-nez v5, :cond_4

    goto :goto_4

    .line 289
    :cond_a
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-nez v5, :cond_5

    goto/16 :goto_0

    .line 298
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 301
    .local v4, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x0

    .line 302
    .local v3, "num":I
    :goto_5
    if-eqz v4, :cond_0

    .line 304
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    if-nez p3, :cond_d

    .line 332
    :goto_7
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v5, :cond_12

    .line 347
    :cond_c
    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 305
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 306
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 307
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 308
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 309
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 310
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 311
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 312
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_6

    .line 319
    :cond_d
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-eqz v5, :cond_10

    .line 320
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :goto_8
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-eqz v5, :cond_11

    .line 326
    :cond_f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 319
    :cond_10
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-nez v5, :cond_e

    goto :goto_8

    .line 325
    :cond_11
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-nez v5, :cond_f

    goto :goto_7

    .line 332
    :cond_12
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 334
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    .line 338
    if-eqz v1, :cond_14

    .line 341
    :goto_a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :goto_b
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 336
    :cond_13
    const-string/jumbo v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 339
    :cond_14
    const-string/jumbo v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 463
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 464
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 465
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 466
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 468
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 983
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 17
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 873
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    sget-boolean v13, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v13, :cond_1

    .line 880
    :goto_0
    sget-boolean v13, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-nez v13, :cond_2

    .line 890
    :cond_0
    :goto_1
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 892
    if-nez p2, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 893
    .local v12, "transitionStyle":I
    :goto_2
    if-nez p2, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 894
    .local v11, "transition":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    .line 895
    .local v7, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_4
    if-nez v7, :cond_8

    .line 957
    if-nez p1, :cond_d

    .line 963
    .end local p2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v13, :cond_e

    .line 967
    :goto_6
    return-object p2

    .line 874
    .end local v7    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v11    # "transition":I
    .end local v12    # "transitionStyle":I
    .restart local p2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "popFromBackStack: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "FragmentManager"

    invoke-static {v14, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v5, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v13, "FragmentManager"

    invoke-direct {v5, v13}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 876
    .local v5, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 877
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v13, "  "

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v10, v15}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 881
    .end local v5    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_2
    if-eqz p2, :cond_3

    .line 885
    if-nez p1, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 882
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_5

    .line 883
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v13}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object p2

    goto :goto_1

    .line 882
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-nez v13, :cond_4

    goto :goto_1

    .line 892
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 893
    .restart local v12    # "transitionStyle":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 896
    .restart local v7    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .restart local v11    # "transition":I
    :cond_8
    if-nez p2, :cond_9

    iget v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 897
    .local v8, "popEnterAnim":I
    :goto_7
    if-nez p2, :cond_a

    iget v9, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 898
    .local v9, "popExitAnim":I
    :goto_8
    iget v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v13, :pswitch_data_0

    .line 950
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown cmd: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 896
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    :cond_9
    const/4 v8, 0x0

    goto :goto_7

    .line 897
    .restart local v8    # "popEnterAnim":I
    :cond_a
    const/4 v9, 0x0

    goto :goto_8

    .line 900
    .restart local v9    # "popExitAnim":I
    :pswitch_0
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 901
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 902
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 954
    :cond_b
    :goto_9
    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_4

    .line 906
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 907
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_c

    .line 912
    :goto_a
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v13, :cond_b

    .line 913
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_b

    .line 914
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 915
    .local v6, "old":Landroid/support/v4/app/Fragment;
    iput v8, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 908
    .end local v4    # "i":I
    .end local v6    # "old":Landroid/support/v4/app/Fragment;
    :cond_c
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_a

    .line 921
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 922
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 923
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_9

    .line 926
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 927
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 928
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_9

    .line 932
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 933
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 934
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_9

    .line 938
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 939
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_9

    .line 944
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 945
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_9

    .line 958
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v12, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 960
    const/16 p2, 0x0

    goto/16 :goto_5

    .line 964
    .end local p2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 965
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto/16 :goto_6

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 454
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 455
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 456
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 457
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 459
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 449
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 450
    return-object p0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 639
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v12, :cond_1

    .line 641
    :goto_0
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v12, :cond_2

    .line 647
    :cond_0
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 649
    const/4 v9, 0x0

    .line 650
    .local v9, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    const/4 v4, 0x0

    .line 651
    .local v4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    const/4 v6, 0x0

    .line 652
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    sget-boolean v12, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-nez v12, :cond_3

    .line 661
    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v9    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :goto_1
    if-nez v9, :cond_4

    iget v11, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 662
    .local v11, "transitionStyle":I
    :goto_2
    if-nez v9, :cond_5

    iget v10, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 663
    .local v10, "transition":I
    :goto_3
    iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 664
    .local v8, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_4
    if-nez v8, :cond_6

    .line 738
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v13, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 740
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v12, :cond_12

    .line 743
    :goto_5
    return-void

    .line 639
    .end local v8    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v10    # "transition":I
    .end local v11    # "transitionStyle":I
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Run: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "FragmentManager"

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :cond_2
    iget v12, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v12, :cond_0

    .line 643
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "addToBackStack() called after commit()"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 653
    .restart local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .restart local v9    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_3
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 654
    .restart local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 656
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, v4, v6}, Landroid/support/v4/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 658
    const/4 v12, 0x0

    invoke-direct {p0, v4, v6, v12}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v9

    goto :goto_1

    .line 661
    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v9    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 662
    .restart local v11    # "transitionStyle":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 665
    .restart local v8    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .restart local v10    # "transition":I
    :cond_6
    if-nez v9, :cond_7

    iget v1, v8, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 666
    .local v1, "enterAnim":I
    :goto_6
    if-nez v9, :cond_8

    iget v2, v8, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 667
    .local v2, "exitAnim":I
    :goto_7
    iget v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v12, :pswitch_data_0

    .line 731
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown cmd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 665
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    .line 666
    .restart local v1    # "enterAnim":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 669
    .restart local v2    # "exitAnim":I
    :pswitch_0
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 670
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 671
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 735
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_9
    :goto_8
    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_4

    .line 674
    :pswitch_1
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 675
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iget v0, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 676
    .local v0, "containerId":I
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v12, :cond_b

    .line 700
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_a
    if-eqz v3, :cond_9

    .line 701
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 702
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_8

    .line 677
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_b
    const/4 v5, 0x0

    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .local v5, "i":I
    :goto_9
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_a

    .line 678
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 679
    .local v7, "old":Landroid/support/v4/app/Fragment;
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v12, :cond_c

    .line 681
    :goto_a
    iget v12, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eq v12, v0, :cond_d

    .line 677
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 679
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "OP_REPLACE: adding="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "FragmentManager"

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 682
    :cond_d
    if-eq v7, v3, :cond_f

    .line 685
    iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v12, :cond_10

    .line 688
    :goto_c
    iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iput v2, v7, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 690
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v12, :cond_11

    .line 695
    :cond_e
    :goto_d
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v7, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_b

    .line 683
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    goto :goto_b

    .line 686
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_10
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    goto :goto_c

    .line 691
    :cond_11
    iget v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 692
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bump nesting of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "FragmentManager"

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 706
    .end local v0    # "containerId":I
    .end local v5    # "i":I
    .end local v7    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 707
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 708
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_8

    .line 711
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 712
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 713
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_8

    .line 716
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 717
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 718
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_8

    .line 721
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 722
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 723
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_8

    .line 726
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 727
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 728
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_8

    .line 741
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_12
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v12, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    goto/16 :goto_5

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 576
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 578
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 582
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 583
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 584
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 564
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 566
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 570
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 571
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 572
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 504
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 505
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 506
    iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 507
    iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 508
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 512
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 513
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .prologue
    .line 536
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 537
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 472
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 473
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 474
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 475
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 477
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v1, :cond_0

    .line 248
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 252
    :goto_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
