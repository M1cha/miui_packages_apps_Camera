.class public Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;
.super Ljava/lang/Object;
.source "MakeupSingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeupItem"
.end annotation


# instance fields
.field private mImageResource:I

.field private mTextResource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mImageResource:I

    iput p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mTextResource:I

    return-void
.end method


# virtual methods
.method public getImageResource()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mImageResource:I

    return v0
.end method

.method public getTextResource()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;->mTextResource:I

    return v0
.end method
