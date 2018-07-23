.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 100
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 102
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 9
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "numRemoved":I
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 51
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-nez v3, :cond_0

    .line 55
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 57
    iget-boolean v6, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v6, :cond_2

    .line 61
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 62
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 63
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-nez v3, :cond_3

    .line 81
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 82
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 83
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 85
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 86
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 87
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 88
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 89
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 90
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 91
    return-void

    .line 52
    .end local v5    # "pos":I
    :cond_0
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 53
    :goto_2
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_2

    .line 58
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 64
    .restart local v5    # "pos":I
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v7, v6, v5

    .line 65
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_4

    const/4 v6, -0x1

    :goto_3
    aput v6, v7, v4

    .line 66
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v7, v6, v5

    .line 67
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v7, v6, v4

    .line 68
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v7, v6, v5

    .line 69
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v7, v6, v4

    .line 70
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 77
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v8, v6, v5

    .line 79
    :goto_4
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto/16 :goto_1

    .line 65
    :cond_4
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_3

    .line 71
    :cond_5
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 72
    .local v0, "N":I
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_5
    if-lt v1, v0, :cond_6

    move v4, v5

    .line 76
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_4

    .line 74
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_6
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v6, v7, v5

    .line 73
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 13
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    const/4 v12, 0x1

    .line 108
    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v1, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 109
    .local v1, "bse":Landroid/support/v4/app/BackStackRecord;
    const/4 v7, 0x0

    .line 110
    .local v7, "pos":I
    const/4 v5, 0x0

    .line 111
    .local v5, "num":I
    :goto_0
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    array-length v10, v10

    if-lt v7, v10, :cond_0

    .line 140
    iget v10, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    iput v10, v1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 141
    iget v10, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    iput v10, v1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 142
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v10, v1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 143
    iget v10, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    iput v10, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 144
    iput-boolean v12, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 145
    iget v10, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v10, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 146
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 147
    iget v10, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v10, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 148
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 149
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v10, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 150
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v10, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v1, v12}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 152
    return-object v1

    .line 112
    :cond_0
    new-instance v6, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v6}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 113
    .local v6, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget v10, v10, v7

    iput v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 114
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v10, :cond_1

    .line 116
    :goto_1
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v3, v10, v8

    .line 117
    .local v3, "findex":I
    if-gez v3, :cond_2

    .line 121
    const/4 v10, 0x0

    iput-object v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 123
    :goto_2
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 124
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 125
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 126
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 127
    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v0, v10, v7

    .line 128
    .local v0, "N":I
    if-gtz v0, :cond_3

    move v7, v8

    .line 137
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :goto_3
    invoke-virtual {v1, v6}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "N":I
    .end local v3    # "findex":I
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Instantiate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " op #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " base fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v8    # "pos":I
    .restart local v3    # "findex":I
    .restart local v7    # "pos":I
    :cond_2
    iget-object v10, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 119
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iput-object v2, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    goto :goto_2

    .line 129
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v7    # "pos":I
    .restart local v0    # "N":I
    .restart local v8    # "pos":I
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 130
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-lt v4, v0, :cond_4

    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_3

    .line 131
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_4
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-nez v10, :cond_5

    .line 133
    :goto_5
    iget-object v10, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 134
    .local v9, "r":Landroid/support/v4/app/Fragment;
    iget-object v10, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_4

    .line 131
    .end local v9    # "r":Landroid/support/v4/app/Fragment;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Instantiate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " set remove fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 171
    return-void
.end method
